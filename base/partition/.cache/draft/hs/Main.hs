main = do
    a <- readLn :: IO Bool
    b <- readLn :: IO [Int]
    print $ splitints a b
