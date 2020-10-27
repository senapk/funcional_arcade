soma2 :: Num a => a -> a -> a
soma2 x y = x + y


main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ soma2 a b
