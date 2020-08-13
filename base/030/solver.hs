
uniao :: [Int] -> [Int] -> [Int]
uniao ys xs = ys ++ [x | x <- xs, not (elem x ys)]

--uniao :: Eq a => [a] -> [a] -> [a]
--uniao lista [] = lista
--uniao lista (x:xs) = if elem x lista
--    then uniao lista xs
--    else uniao lista xs ++ [x]