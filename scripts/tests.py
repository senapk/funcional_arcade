class TestHS(unittest.TestCase):
    def setUp(self):
        self.data = """
```
a == b
```
a == b
```hs
--IN : Lista xs e um natural n
--OUT: N-ésimo termo de xs
outro lixo qualquer sem igual igual
elemento 2 [2,7,3,9] banana == 3
case 0 4.4 [1,2,3] 5 [2,7,3,9] == [1,3,4,5,6]
case 1 [1,2,3] 5 [2,7,3,9] == 1 [1,3,4,5,6]
```
```hs
soma 2.4 [2.4,7.3,3.1,9.9] 7banana == 3
texto 2 "banana madura" "ovo podre" 4 == "banana"
texto2 "banana madura" 2 "ovo podre" == "banana"
```

"""

    def test_load(self):
        tests = tk.HSMod.HFile.load_from_text(self.data)
        self.assertEqual(tests[0], tk.HSMod.Case("elemento", "2\n[2,7,3,9]\nbanana\n", "3\n"))
        self.assertEqual(tests[1], tk.HSMod.Case("case", "0\n4.4\n[1,2,3]\n5\n[2,7,3,9]\n", "[1,3,4,5,6]\n"))
        self.assertEqual(tests[2], tk.HSMod.Case("case", "1\n[1,2,3]\n5\n[2,7,3,9]\n", "1 [1,3,4,5,6]\n"))
        self.assertEqual(tests[3], tk.HSMod.Case("soma", "2.4\n[2.4,7.3,3.1,9.9]\n7banana\n", "3\n"))
        self.assertEqual(str(tests[4]), str(tk.HSMod.Case("texto", '2\nbanana madura\novo podre\n4\n', '"banana"\n')))
        self.assertEqual(tests[5], tk.HSMod.Case("texto2", 'banana madura\n2\novo podre\n', '"banana"\n'))


class Test2HS(unittest.TestCase):

    def test_hmain_0(self):
        main_gen = tk.HSMod.HMain.format_main(tk.HSMod.Case("elemento", "2\n[2,7,3,9]\nbanana\n", "3\n"))
        main_str = """main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    c <- getLine
    print $ elemento a b c
"""
        self.assertEqual(main_gen, main_str)


    def test_diff_hs(self):
        tk.setAsc2()
        tk.Report.set_terminal_size(100)
        tk.Logger.store()
        tk.Actions.execute(["data/teste_diff_2"], tk.Param.Basic())
        output = tk.Logger.recover()
        expected = (
            "=>data/teste_diff_2 (03) [Readme.md(03)] [(W)solver.hs] (X)\n"
            "    (W)=>data/teste_diff_2/solver.hs WRONG_OUTPUT\n"
            "        (S)[00] GR:100 data/teste_diff_2/Readme.md ()      \n"
            "        (S)[01] GR:100 data/teste_diff_2/Readme.md ()      \n"
            "        (X)[02] GR:100 data/teste_diff_2/Readme.md ()      \n"
            "                                      MODE: FIRST FAILURE ONLY                                     \n"
            " ───────────────────────────────────────────────   ─────────────────────────────────────────────── \n"
            "   GR:100 data/teste_diff_2/Readme.md ()         │   GR:100 data/teste_diff_2/Readme.md ()         \n"
            " -------------------- INPUT -------------------- │ -------------------- INPUT -------------------- \n"
            " 1↵                                              │ 1↵                                              \n"
            " -1↵                                             │ -1↵                                             \n"
            " --------------- EXPECTED OUTPUT --------------- │ ----------------- USER OUTPUT ----------------- \n"
            " -2↵                                             ≠ 0↵                                              \n"
            " ───────────────────────────────────────────────   ─────────────────────────────────────────────── \n")
        self.assertEqual(output, expected)