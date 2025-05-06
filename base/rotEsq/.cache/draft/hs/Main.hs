main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotEsq a b
