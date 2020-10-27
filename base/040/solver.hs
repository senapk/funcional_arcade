myToUpper :: Char -> Char
-- agora pegamos a posicao onde ele aparece primeiro
myToUpper c = head [snd y | y <- mapa c, (fst y) == c]
    where mapa c = zip ['a'..'z'] ['A'..'Z'] ++ [(c, c)]
    -- na pior das hipóteses ele encontra o char na ultima posicao

-- versão usando conversão entre os valores asc
myToLower :: Char -> Char
myToLower x = if x >= 'A' && x <= 'Z' then toEnum (fromEnum x + 32) else x

process :: [Char] -> [Char]
process (x:[]) = []
process (x:xs) = (if x == ' ' then myToUpper(y) else myToLower(y)) : process (xs)
       where y = head xs

titulo :: [Char] -> [Char]
titulo xs = process (' ':xs)