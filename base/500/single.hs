main = do
    xs <- fmap words getLine
    let name = head xs
    let age = read (xs !! 1) :: Int
    let height = read (xs !! 2) :: Float
    putStrLn $ name ++ " tem " ++ show age ++ " anos e mede " ++ show height