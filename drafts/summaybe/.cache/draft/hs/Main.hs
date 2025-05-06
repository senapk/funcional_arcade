main :: IO ()
main = do
    a <- readLn :: IO Bool
    b <- readLn :: IO Bool
    print $ somaMaybe a b
