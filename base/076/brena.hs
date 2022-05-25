import Data.List
import Data.Maybe
ehPrimo x
        | (length [y | y <- [1..x], x `mod` y == 0]) > 2 = False
        | otherwise = True

primos = [y | y <- [2,3..] , ehPrimo y]


pegarTantos :: Int -> [Int] -> [Int]
pegarTantos x = takeWhile (< x)

fatoracao x = [y | y <- pegarTantos x primos, x `mod` y == 0]


expoente' x y =  [x] ++ (takeWhile (>1) $ tail $ iterate (`div` y) x)


expoente x y = takeWhile (>(-1)) [b | a <- (expoente' x y), let b = if (mod a y /= 0) then -1 else a]

frequencia :: Eq a => a -> [(a, b)] -> Int
frequencia x xs = length(filter(\(a,b) -> a==x) xs)

factors' :: Int -> [(Int,Int)]
factors' x = [(a,b) | a <- fatoracao x, b <- expoente x a,  b `mod` a == 0]

factors :: Int -> [(Int, Int)]
factors x =  nub [(m, frequencia m fatores) | (m,n) <- fatores]
        where
            fatores = factors' x
