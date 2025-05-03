main = do
    a <- readLn :: IO Bool
    print $ reduce a
