ehPrimo :: Int -> Bool
ehPrimo num = null [x | x <- [2..(floor . sqrt . fromIntegral) num], num `mod` x == 0]

listPrimos ::  [Int]
listPrimos = [x | x <- [2..], ehPrimo x]

-- quantas vezes valor pode ser dividido por divisor e o resultado
expoentes :: Integral a => a -> a -> Int
expoentes number elem = length . tail . takeWhile (\(v,r) -> v /= 0 && r == 0) $ sequencia
                        where sequencia = iterate (\(v, r) -> divMod v elem) (number, 0)

-- --factors' :: Int -> Int -> [(Int, Int)]
-- factors' 1 _ = []
-- factors' v i
--         | ehPrimo i && res /= 0 = (i, res) : factors' sobra (i + 1)
--         | otherwise = factors' v (i + 1)
--         where res = maxPot v i
--               sobra = div v (i ^ res)

-- fatorate num (x: xs)    | num == 1  = []
--                         | f == 0    =     fatorate num xs
--                         | otherwise = (x, f) : fatorate resto xs
--                         where f = expoentes num x
--                               resto = num `div` x ^ f

--factors num = fatorate num listPrimos

fn :: Integral b1 => (b1, b2, c) -> b1 -> (b1, b1, Int)
fn (num, primo, fat) p = (if f == 0 then num else num `div` p ^ f, p, f)
      where f = expoentes num p

factors :: Int -> [(Int, Int)]
factors num = [(p, e) | (n, p, e) <- lista, e /= 0]
      where lista = takeWhile (\(n, p, e) -> n /= 1 || e /= 0) $ scanl fn (num, 0, 0) listPrimos

-- --factors :: Int -> [(Int, Int)]
-- factors v = factors' v 2
