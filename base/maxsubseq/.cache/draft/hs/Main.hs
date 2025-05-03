main = do
    a <- readLn :: IO [Int]
    print $ maxsubseq a
