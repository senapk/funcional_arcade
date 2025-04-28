main = do
    [name, age', height'] <- words <$> getLine -- lendo e decompondo já nas variáveis
    
    let age = (read :: String -> Int) (age') -- utilizando a função com descrição completa
    let height = read (height') :: Float        -- utilizando a função com parâmetro

    putStrLn $ name ++ " tem " ++ show age ++ " anos e mede " ++ show height
