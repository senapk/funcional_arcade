main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ interior a
