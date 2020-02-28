soma x y = x + y

main :: IO()
main = do
    x <- readLn::IO Int
    y <- readLn::IO Int
    print $ soma x y


