main :: IO ()
main = do
    a <- readLn :: IO Int
    print $ sdig a
