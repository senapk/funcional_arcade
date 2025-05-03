main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ frequencia a b
