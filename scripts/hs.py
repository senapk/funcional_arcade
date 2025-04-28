#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import re
import os
import shutil
import subprocess
import tempfile

from subprocess import PIPE

class Runner:
    class CompileError(Exception):
        pass

    class ExecutionError(Exception):
        pass

    @staticmethod
    def subprocess_run(cmd_list: list[str], input_data: str = ""):
        p = subprocess.Popen(cmd_list, stdout=PIPE, stdin=PIPE, stderr=PIPE, universal_newlines=True)
        stdout, stderr = p.communicate(input=input_data)
        return p.returncode, stdout, stderr


class Case:
    def __init__(self, cmd: str="", _input: str="", _output: str="", _parameters: list[str]=[]):
        self.cmd = cmd
        self.input = _input
        self.output = _output
        self.parameters = _parameters

    @staticmethod
    def __split_input_lint_in_parameters(input_line: str):
        markup_char = "ł"
        # keeping strings together
        _input = input_line.strip().split('"')
        it = 1
        while it < len(_input):
            _input[it] = _input[it].replace(" ", markup_char) # marking spaces inside strings
            it += 2
        line = '"'.join(_input)

        parameters = line.split(" ")
        for i in range(len(parameters)):
            parameters[i] = parameters[i].replace(markup_char, " ")  # returning spaces inside strings

        # remove empty words
        parameters = [item for item in parameters if item != ""]
        return parameters

    @staticmethod
    def __split_test_line(line: str) -> tuple[str, str, str]:
        parts = line.split("==")
        # remove first word
        _input = parts[0].strip().split(" ")
        _cmd = _input[0]
        del _input[0]
        _input_text = " ".join(_input)
        _output_text = parts[1].strip() + "\n"
        return _cmd, _input_text, _output_text

    @staticmethod
    def __convert_parameters_to_input_block(parameters: list[str]):
        _input = parameters[:]
        # removing " from beggining and ending of the strings
        for i in range(len(_input)):
            if _input[i].startswith('"') and _input[i].endswith('"'):
                _input[i] = _input[i][1:-1]
        return "\n".join(_input) + "\n"

    def init_from_line(self, line: str):
        cmd, input_text, output_text = Case.__split_test_line(line)
        parameters = Case.__split_input_lint_in_parameters(input_text)
        input_block = Case.__convert_parameters_to_input_block(parameters)
        self.cmd = cmd
        self.input = input_block
        self.output = output_text
        self.parameters = parameters
        return self

    def __str__(self):
        return self.cmd + "(" + self.input + ")(" + self.output + ")"

    def __eq__(self, test: object) -> bool:
        if not isinstance(test, Case):
            return False
        return (self.cmd == test.cmd) and (test.input == self.input) and (test.output == self.output)


class HFile:
    @staticmethod
    def __filter_lines(lines: list[str]) -> list[str]:
        lines = [line.strip() for line in lines]
        lines = [line for line in lines if not line.startswith("--")]
        lines = [line for line in lines if not line.startswith("```")]
        lines = [line for line in lines if "==" in line]
        return lines

    @staticmethod
    def __extract_hs(text: str) -> str:
        regex = r"```hs(.*?)\n```"
        match_list = re.findall(regex, text, re.MULTILINE | re.DOTALL)
        return "\n".join(match_list)

    @staticmethod
    def load_from_text(text: str) -> list[Case]:
        text = HFile.__extract_hs(text)
        lines = text.split("\n")
        lines = HFile.__filter_lines(lines)
        return [Case().init_from_line(line) for line in lines]


class HMain:
    @staticmethod
    def is_int(token: str):
        try:
            int(token)
            return True
        except ValueError:
            return False

    @staticmethod
    def is_float(token: str):
        try:
            float(token)
            return True
        except ValueError:
            return False

    @staticmethod
    def identify_type(token: str) -> str:
        if token.startswith("["):
            data = token[1:-1].split(",")[0]
            if HMain.is_int(data):
                return "[Int]"
            elif HMain.is_float(data):
                return "[Float]"
            elif data[0] == '"':
                return "[String]"
            elif data[0] == "'":
                return "[Char]"
            else:
                return "[Bool]"
        elif HMain.is_int(token):
            return "Int"
        elif HMain.is_float(token):
            return "Float"
        elif token[0] == '"':
            return "String"
        elif token[0] == "'":
            return "Char"
        else:
            return "Bool"

    @staticmethod
    def format_main(test: Case) -> str:
        readings = [HMain.identify_type(token) for token in test.parameters]
        readings = [("<- readLn :: IO " + _type) for _type in readings]
        for i in range(len(readings)):
            if readings[i] == "<- readLn :: IO String":
                readings[i] = "<- getLine"
        out = "main = do\n"
        var = "a"
        tab = "    "
        print_cmd = tab + "print $ " + test.cmd
        for reading in readings:
            out += tab + var + " " + reading + "\n"
            print_cmd += " " + var
            var = chr(ord(var) + 1)
        return out + print_cmd + "\n"


class HSMod:
    regex = r"<!--MAIN_BEGIN-->(.*)<!--MAIN_END-->"

    @staticmethod
    def make_main_from_ghci(content: str) -> tuple[str, bool]:
        hcase_list = HFile.load_from_text(content)
        if len(hcase_list) > 0:
            return HMain.format_main(hcase_list[-1]), True
        return "", False

    @staticmethod
    def load_htests_as_tio(content: str) -> tuple[str, bool]:
        output = ""
        hcase_list = HFile.load_from_text(content)
        if len(hcase_list) == 0:
            return "", False
        for hc in hcase_list:
            output += ">>>>>>>>\n" + hc.input + "========\n" + hc.output + "<<<<<<<<\n\n"
        return "```txt\n" + output + "```\n", True

    @staticmethod
    def prepare_hs(solver: str, executable_path: str):
        cmd = ["ghc", solver, "-o", executable_path]
        return_code, stdout, stderr = Runner.subprocess_run(cmd)
        if return_code != 0:
            print(stdout + stderr)
            exit(2)
        os.remove(solver[:-3] + ".hi")
        os.remove(solver[:-3] + ".o")


def read_from_file(path: str):
    with open(path, "r") as f:
        return f.read()

# return actual main inside tags
def extract_main(readme_content: str) -> tuple[str, bool]:
    found = re.search(HSMod.regex, readme_content, re.MULTILINE | re.DOTALL)
    if found:
        return found.group(0), True
    return "", False

# replace the actual main with the new main
def replace_main(readme_content: str, main_str: str) -> str:
    # subst = "<!--MAIN_BEGIN-->\\n### Main\\n\\n```hs\\n" + main_str + "\\n```\\n<!--MAIN_END-->"
    subst = ""
    result = re.sub(HSMod.regex, subst, readme_content, 0, re.MULTILINE | re.DOTALL)
    return result

def put_guards_on_main(main_str: str) -> str:
    return "<!--MAIN_BEGIN-->\n### Main\n\n```hs\n" + main_str + "\n```\n<!--MAIN_END-->\n"
    
def is_manual_mode(main_with_guards: str) -> bool:
    return "<!--MANUAL-->" in main_with_guards

def update_readme(folder: str):
    pass
    # readme_path = os.path.join(folder, "Readme.md")
    # last_change = os.path.join(folder, ".last")
    # if os.path.isfile(last_change):
    #     if os.path.getmtime(last_change) > os.path.getmtime(readme_path):
    #         return
    
    # readme = read_from_file(readme_path)
    # extracted, ok = extract_main(readme)
    # if not ok:
    #     print("No main found in " + os.path.abspath(readme_path))
    #     return
    # if is_manual_mode(extracted):
    #     print("Manual mode in " + os.path.abspath(readme_path)) 
    #     return

    # generated = put_guards_on_main(main_str)
    # with open(readme_path, "w") as f:
    #     new_content = replace_main(readme, "")
    #     f.write(new_content)
    # if(extracted != generated):
    # else:
    #     with open(readme_path, "w") as f:
    #         f.write(readme + "\n\n" + generated)
    # updating ctime of last change
    # with open(last_change, "w"):
    #    pass


def copy_to_temp(folder: str):
    temp_dir = tempfile.mkdtemp()
    for file in os.listdir(folder):
        if os.path.isfile(os.path.join(folder, file)):
            shutil.copyfile(os.path.join(folder, file), os.path.join(temp_dir, file))
    return temp_dir


def build_testes(folder: str):
    readme_path = os.path.join(folder, "Readme.md")
    readme: str = read_from_file(readme_path)

    manual = "MANUAL" in readme
    if manual:
        print("Manual testes in " + os.path.abspath(readme_path))
        return

    if "## Testes" in readme:
        print("Replacing tests in " + os.path.abspath(readme_path))
        readme = readme.split("## Testes")[0]
    else:
        print("Adding tests in " + os.path.abspath(readme_path))

    # extracted, ok = extract_main(readme)
    # # if not ok:
    # #     print("No main found in " + os.path.abspath(readme_path))
    # #     return
    # # if not is_manual_mode(extracted):
    

    tests, ok = HSMod.load_htests_as_tio(readme)
    if not ok:
        print("No tests found in " + os.path.abspath(readme_path))
        return
    append = "## Testes\n\n"
    append += tests
    with open(readme_path, "w") as f:
        f.write(readme + append)

def extract_pure_main(folder: str) -> tuple[str, bool]:
    readme_path = os.path.join(folder, "Readme.md")
    if not os.path.isfile(readme_path):
        return "", False
    readme = read_from_file(readme_path)
    extracted, ok = extract_main(readme)
    if not ok:
        print(os.path.abspath(readme_path))
        return "", False
    regex = r"```hs(.*?)\n```"
    found = re.search(regex, extracted, re.MULTILINE | re.DOTALL)
    if found is None:
        print("No main found in " + os.path.abspath(readme_path))
        return "", False
    return found.group(0)[5:-4], True

# Extract main from Readme if solver not contains any main
def build_solver(folder: str):
    readme_path = os.path.join(folder, "Readme.md")
    readme = read_from_file(readme_path)
    main_str, ok = HSMod.make_main_from_ghci(readme)
    if not ok:
        print("Failed to generate main from Readme in " + os.path.abspath(readme_path))
        return
    solver_path = os.path.join(folder, "solver.hs")
    destiny_path = os.path.join(folder, "src", "hs", "Main.hs")

    with open(solver_path, "r") as f:
        solver_content = f.read()

    # check destiny path directory
    os.makedirs(os.path.dirname(destiny_path), exist_ok=True)

    with open(destiny_path, "w") as f:
        f.write("-- DEL!\n" + solver_content + "\n-- ADD!\n" + main_str)
    # os.remove(temp_solver)

    
# def which(program):
#     import os
#     def is_exe(fpath):
#         return os.path.isfile(fpath) and os.access(fpath, os.X_OK)

#     fpath, _fname = os.path.split(program)
#     if fpath:
#         if is_exe(program):
#             return program
#     else:
#         for path in os.environ["PATH"].split(os.pathsep):
#             exe_file = os.path.join(path, program)
#             if is_exe(exe_file):
#                 return exe_file
#     return None

def main():
    parser = argparse.ArgumentParser(prog='kph.py', description="gerador haskell to vpl", formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument('--update', '-u', metavar="F", type=str, nargs='*', help='update Readme.md main in folders.')
    parser.add_argument('--source', action='store_true', help='rebuild source to include testes from ghci example')
    parser.add_argument('--solver', metavar="F", type=str, help='build solver to executable including main from Readme.md')
    
    args = parser.parse_args()
    if args.update:
        folders = ["."]
        if args.update:
            if len(args.update) != 0:
                folders = args.update

        for folder in folders:
            if os.path.isdir(folder):
                update_readme(folder)
                build_testes(folder)
                build_solver(folder)
            else:
                print("script parameters should be folders with a Readme.md", end='')

    
    # if args.solver:
    #     if not args.solver[0].endswith(".hs"):
    #         exit(1)
    #     build_solver(args.solver[0], args.solver[1])



if __name__ == '__main__':
    main()
