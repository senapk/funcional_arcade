main :: IO ()
main = do
    a <- readLn :: IO [Bool]
    b <- readLn :: IO Bool
    c <- readLn :: IO Bool
    print $ filterMaybe a b c
