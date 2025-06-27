main :: IO ()
main = do
    vet <- readLn :: IO [Int]
    print $ fn vet
