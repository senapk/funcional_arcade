main :: IO ()
main = do
    a <- readLn :: IO Int
    print $ alter a
