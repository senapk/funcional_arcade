main = do
    xs <- words <$> getLine -- lendo a linha e quebrando num vetor de palavras
    
    let name = head xs  
    let age = (read :: String -> Int) (xs !! 1) -- utilizando a função com descrição completa
    let height = read (xs !! 2) :: Float        -- utilizando a função com parâmetro

    -- utilizando a função show para converter age e height para string
    putStrLn $ name ++ " tem " ++ show age ++ " anos e mede " ++ show height
