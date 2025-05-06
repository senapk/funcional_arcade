main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ soma2 a b
