main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ base a b
