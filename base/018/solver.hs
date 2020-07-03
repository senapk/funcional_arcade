-- filter
--frequencia x xs = length $ filter (==x) xs

-- CL
--frequencia x xs = sum [1 | y <- xs, y == x]

-- recursão

--frequencia y [] = 0
--frequencia y (x:xs) = achou + frequencia y xs
--                    where achou = if x == y then 1 else 0


-- foldr
frequencia x = foldr fn 0
            where fn = \z -> (+) (if z == x then 1 else 0)