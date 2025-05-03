main = do
    a <- readLn :: IO Int
    print $ vetFib a
