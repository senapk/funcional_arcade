splitints :: Integral a => [a] -> ([a], [a])
splitints u = ([x | x<-u, odd x], [x | x<-u, even x])

--separar [1,2,3,4,1,2,6,7] == ([1,3,1,7], [2,4,2,6])

-- 1 Filter
-- separar xs = (filter (\x -> x `mod` 2 == 1) xs, filter even xs)

-- 2 List Comp
-- separar xs = ([x | x <- xs, odd x], [x | x <- xs, even x])

-- 3 Recursão
-- separar [] = ([], [])
-- separar (x:xs) = ([x | odd x] ++ impares, [x | even x] ++ pares)
--     where (impares, pares) = separar xs

-- -- 4 Interativo
-- separar' [] impares pares = (impares, pares)
-- separar' (x:xs) impares pares
--     | odd x     = separar' xs (impares ++ [x]) pares
--     | otherwise = separar' xs impares (pares ++ [x])
-- separar xs = separar' xs [] []


-- 5 Fold
fn x tup = ([x | odd x] ++ (fst tup), [x | even x] ++ (snd tup))
separar xs =  foldr fn ([], []) xs
