--unique:: [Int] -> [Int]
--unique lista
--    |lista == [] = []
--    |head lista `elem` tail lista = unique(tail lista)
--    |otherwise = head lista:unique(tail lista)


--unique :: [Int] -> [Int]
--unique [] = []
--unique (x:[]) = [x]
--unique (x:xs)
--    | x `elem` xs = unique xs
--    | otherwise = x:(unique xs)


--unique' [] aux = aux 
--unique' (x:xs) aux = unique' xs if not x `elem` aux then (aux++[x]) else  unique' xs aux
--unique xs = unique' xs []


-- versao 99.0
unique [] = []
unique (x:xs) = x:(unique (filter (/=x) xs))
--By marcelo