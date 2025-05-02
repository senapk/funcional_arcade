main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotDir a b
