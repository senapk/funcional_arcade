main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ nextPerm a
