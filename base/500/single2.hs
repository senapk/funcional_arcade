main = do
    [name, age', height'] <- fmap words getLine
    let age = read age' :: Int
    let height = read height' :: Float
    putStrLn $ name ++ " tem " ++ show age ++ " anos e mede " ++ show height