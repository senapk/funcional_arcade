#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from __future__ import annotations

import argparse
import re
import os
import shutil
import subprocess
import tempfile
from typing import Dict, List, Tuple, Union, Optional, Any  # , Any, Callable




def read_from_file(path: str):
    with open(path, "r") as f:
        return f.read()

def add_main(readme, readme_file, main_str):
    regex = r"<!--MAIN_BEGIN-->(.*)<!--MAIN_END-->"
    found = re.search(regex, readme, re.MULTILINE | re.DOTALL)
    subst = "<!--MAIN_BEGIN-->\\n### Main\\n```hs\\n" + main_str + "\\n```\\n<!--MAIN_END-->"
    if found:
        result = re.sub(regex, subst, readme, 0, re.MULTILINE | re.DOTALL)
        if result != readme:
            print("changed, replacing Main on", readme_file)
            with open(readme_file, "w") as f:
                f.write(result)
    else:
        print("Not found, adding Main")
        add = "\n\n<!--MAIN_BEGIN-->\n### Main\n```hs\n" + main_str + "\n```\n<!--MAIN_END-->\n"
        with open(readme_file, "w") as f:
            f.write(readme + add)


def subprocess_run(cmd_list: List[str], input_data: str = "") -> Tuple[int, Any, Any]:
    p = subprocess.Popen(cmd_list, stdout=subprocess.PIPE, stdin=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
    stdout, stderr = p.communicate(input=input_data)
    return p.returncode, stdout, stderr

def process_folder(folder: str, executable: str):
    readme_path = os.path.join(folder, "Readme.md")
    last_change = os.path.join(folder, ".last")
    if os.path.isfile(last_change):
        if os.path.getmtime(last_change) > os.path.getmtime(readme_path):
            return
    
    readme = read_from_file(readme_path)
    tdir = copy_to_temp(folder)
    dummy_hs = os.path.join(tdir, ".hs")
    with open(dummy_hs, "w") as f:
        pass

    cmd_list = [executable, "compile", "-k", dummy_hs]
    code, stdout, stderr = subprocess_run(cmd_list)
    if code != 0:
        print(stdout + stderr)
        exit(1)
    main_file = os.path.join(tdir, ".__solver__.hs")
    main_str = ""
    if os.path.isfile(main_file):
        with open(main_file) as f:
            main_str = "\n".join([line for line in f.read().split("\n") if line != ""]) + "\n"
    add_main(readme, readme_path, main_str)
    # updating ctime of last change
    with open(last_change, "w"):
        pass

def copy_to_temp(folder):
    temp_dir = tempfile.mkdtemp()
    for file in os.listdir(folder):
        if os.path.isfile(os.path.join(folder, file)):
            shutil.copyfile(os.path.join(folder, file), os.path.join(temp_dir, file))
    return temp_dir

def which(program):
    import os
    def is_exe(fpath):
        return os.path.isfile(fpath) and os.access(fpath, os.X_OK)

    fpath, fname = os.path.split(program)
    if fpath:
        if is_exe(program):
            return program
    else:
        for path in os.environ["PATH"].split(os.pathsep):
            exe_file = os.path.join(path, program)
            if is_exe(exe_file):
                return exe_file
    return None

def main():
    parser = argparse.ArgumentParser(prog='hs.py', description="gerador haskell to vpl", formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument('folders', type=str, nargs='*', help='diretório de trabalho')
    args = parser.parse_args()

    folders = ["."]
    if len(args.folders) != 0:
        folders = args.folders

    executable = "tk"
    if not which(executable):
        executable = "tk.py"
        if not which(executable):
            print("install tk in system path")
            exit(1)
    print("Updating Readmes")
    for folder in folders:
        if os.path.isdir(folder):
            process_folder(folder, executable)
        else:
            print("script parameters should be folders with a Readme.md", end='')

if __name__ == '__main__':
    main()


