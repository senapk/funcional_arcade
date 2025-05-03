main = do
    a <- readLn :: IO [Int]
    print $ inits a
