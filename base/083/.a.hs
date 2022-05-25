fn (n,d) x
    | n `mod` x == 0 && d `mod` x == 0 = (n `div` x, d `div` x)
    | otherwise = (n,d)

reduce (n,d) = foldl fn (n,d) [2..d]

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ reduce (a,b)
