import Data.List ( unfoldr )

ehPrimo :: Int -> Bool
ehPrimo num = null [x | x <- [2..(floor . sqrt . fromIntegral) num], num `mod` x == 0]

listPrimos ::  [Int]
listPrimos = [x | x <- [2..], ehPrimo x]

expoentes :: Integral a => a -> a -> Int
expoentes v p =  (-1+) . length . takeWhile (\(v,r) -> r == 0) $ iterate (\(v, _) -> divMod v p) (v, 0)

dobra (value, p:ps) | value == 1 = Nothing
                    | otherwise =   Just ((p, res), (value `div` p ^ res, ps))
                    where res = expoentes value p

factors value =  filter (\(p,q) -> q /= 0) $ unfoldr dobra (value, listPrimos)
