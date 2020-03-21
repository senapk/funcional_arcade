-- total xs = sum  [1 | x <- xs]

--total [] = 0
--total (x:xs) = 1 + total xs

total = foldr (\x -> (+) 1) 0