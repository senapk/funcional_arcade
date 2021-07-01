ehPrimo :: Int -> Bool
ehPrimo num = null [x | x <- [2..(floor . sqrt . fromIntegral) num], num `mod` x == 0]

listPrimos ::  Int -> [Int]
listPrimos n = [x | x <- [2..n], ehPrimo x]

-- quantas vezes valor pode ser dividido por divisor e o resultado
maxPot :: Int -> Int -> (Int, Int)
maxPot valor divisor    | valor == 0 || valor `mod` divisor /= 0 = (0, valor)
                        | otherwise = inc maxPot (valor `div` divisor) divisor
                        where inc (qtd, valor) = (qtd + 1, valor)

-- --factors' :: Int -> Int -> [(Int, Int)]
-- factors' 1 _ = []
-- factors' v i
--         | ehPrimo i && res /= 0 = (i, res) : factors' sobra (i + 1)
--         | otherwise = factors' v (i + 1)
--         where res = maxPot v i
--               sobra = div v (i ^ res)



-- --factors :: Int -> [(Int, Int)]
-- factors v = factors' v 2
