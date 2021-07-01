-- intercal [] x = x
-- intercal x [] = x
-- intercal (x:xs) (y:ys) = x : y : intercal xs ys


-- maiorque xs y = filter verifica xs
--     where
--         ehmaior a b = a > b
--         verifica z = ehmaior z y

intercar xs ys = parte1 ++ parte2
    where
        parte1 = foldl (\l (a,b) -> l ++ [a, b]) [] (zip xs ys)
        parte2
            | tamxs > tamys = drop tamys xs
            | otherwise     = drop tamxs ys
            where
                tamxs = length xs
                tamys = length ys
