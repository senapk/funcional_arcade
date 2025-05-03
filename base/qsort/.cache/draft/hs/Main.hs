main = do
    a <- readLn :: IO [Int]
    print $ qsort a
