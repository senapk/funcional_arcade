main :: IO ()
main = do
    a <- readLn :: IO (Maybe Int)
    b <- readLn :: IO (Maybe Int)
    print $ somaMaybe a b
