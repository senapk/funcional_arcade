-- lista com os numeros menores que x
-- lista_menores x xs = [y | y <- xs, y < x] 

-- -- lista com a qtd de números menores
-- mapaMenores xs = [length [y | y <- xs, y < x]| x <- xs]

-- -- para cada elemento, vê quantos ele repetiu, se for menor que n, ele entra
-- -- depois pega os n primeiros elementos
-- menores n xs = take n [valor | (valor, ocurr) <- zip xs (mapaMenores xs), ocurr < n]

removeMax xs
    | (last xs) == (maximum xs) = init xs
    | otherwise = (removeMax (init xs)) ++ [last xs]

-- remover os maiores até sobrar n

-- menores :: Int -> [Int] -> [Int]
menores n [] = []
menores 0 xs = []

menores n (xs)
    | (length xs) <= n = xs
    |otherwise =  menores n (removeMax xs)
