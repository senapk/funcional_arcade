max3 x y z = max z $ max x y

main = do
    x <- readLn :: IO Int
    y <- readLn :: IO Int
    z <- readLn :: IO Int
    print $ max3 x y z
