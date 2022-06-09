main = do
    [name, age', height'] <- words <$> getLine -- lendo e decompondo já nas variáveis
    
    let age = read age' :: Int                 -- o nome da variável precisa ser diferente
    let height = read height' :: Float         -- utilizando coversão com parâmetro

    putStrLn $ name ++ " tem " ++ show age ++ " anos e mede " ++ show height