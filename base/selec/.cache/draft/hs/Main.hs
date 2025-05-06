main :: IO ()
main = do
    a <- getLine
    b <- readLn :: IO [Int]
    print $ selec a b
