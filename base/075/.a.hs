-- countDiv :: Int -> Int -> (Int, Int)
-- countDiv valor divisor    | valor == 0 || valor `mod` divisor /= 0 = (0, valor)
--                         | otherwise = inc $ countDiv (valor `div` divisor) divisor
--                         where inc (qtd, valor) = (qtd + 1, valor)


-- countDiv :: (Integral d) => d -> d -> (d, d)
countDiv number elem =  (length counter, fst . last $ counter)
                    where
                        process (valor, resto)  = divMod valor elem  
                        sequencia = iterate process (number, 0)
                        counter = tail . takeWhile (\(v,r) -> v /= 0 && r == 0) $ sequencia

main = do
    print $ countDiv 1000 2
    print $ countDiv 4 2
    print $ countDiv 8 2
    print $ countDiv 24 2
    print $ countDiv 150 5


