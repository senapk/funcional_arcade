partes' []     = [[]]
partes' (x:xs) = sub ++ map (x:) sub
    where sub = partes' xs

--partes xs = partes' xs
partes xs = map reverse(partes' $ reverse xs)