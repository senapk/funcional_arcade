-- expoentes :: Int -> Int -> (Int, Int)
-- expoentes valor divisor    | valor == 0 || valor `mod` divisor /= 0 = (0, valor)
--                         | otherwise = inc $ expoentes (valor `div` divisor) divisor
--                         where inc (qtd, valor) = (qtd + 1, valor)


-- expoentes :: (Integral d) => d -> d -> (d, d)
expoentes :: Integral a => a -> a -> Int
expoentes number elem = length . tail . takeWhile (\(v,r) -> v /= 0 && r == 0) $ sequencia
                        where sequencia = iterate (\(v, r) -> divMod v elem) (number, 0)
main = do
    print $ expoentes 7 2
    print $ expoentes 4 2
    print $ expoentes 8 2
    print $ expoentes 24 2
    print $ expoentes 1024 2
    print $ expoentes 150 5

