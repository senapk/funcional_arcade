main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    print $ buscaBin a b
