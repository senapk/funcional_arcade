import Data.List
gerador5 num = unfoldr fn num
    where
        fn 0 = Nothing 
        fn x = Just (x, x `div` 2)

digitos num = reverse $ unfoldr fn num
    where
        fn 0 = Nothing 
        fn x = Just (x `mod` 10, x `div` 10)

-- FATORES

ehPrimo :: Int -> Bool
ehPrimo num = null [x | x <- [2..(floor . sqrt . fromIntegral) num], num `mod` x == 0]

listPrimos ::  [Int]
listPrimos = [x | x <- [2..], ehPrimo x]

-- quantas vezes valor pode ser dividido por divisor e o resultado
-- expoentes 40 2 == 3
expoentes :: Integral a => a -> a -> Int
expoentes number elem = length . tail . takeWhile (\(v,r) -> v /= 0 && r == 0) $ sequencia
                        where sequencia = iterate (\(v, r) -> divMod v elem) (number, 0)

-- pega valor e lista e DEIXA quantas vezes ele é divisível pelo topo da lista
dobra :: (Int, [Int]) -> Maybe ((Int, Int), (Int, [Int]))
dobra (value, p:ps)    | value == 1 = Nothing
                        | otherwise = Just ((p, res), (value `div` p ^ res, ps))
                        where res = expoentes value p

factors value = filter (\(p,q) -> q /= 0) $ unfoldr dobra (value, listPrimos)