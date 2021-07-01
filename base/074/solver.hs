
myreplicate n x
    | n == 0 = []
    | otherwise = x : replicate (n - 1) x


main = do
    print $ myreplicate 4 0 == [0, 0, 0, 0]
    print $ myreplicate 2 True == [True, True]
    print $ myreplicate 3 "banana" == ["banana", "banana", "banana"]