indice :: Char -> Int -> [Char] -> Int
indice _ _ [] = -1
indice c n (p:l) | c == p = n
                 | otherwise = (indice c (n+1) l)

maiuscula :: Char -> Char
maiuscula c = ['A'..'Z'] !! (indice c 0 ['a'..'z']) 

upper :: [Char] -> [Char]
upper s = [if a `elem` ['a'..'z'] then (maiuscula a) else a | a <- s]

minusculo :: Char -> Char
minusculo c = ['a'..'z'] !! (indice c 0 ['A'..'Z'])

down :: [Char] -> [Char]
down s = [if a `elem` ['A'..'Z'] then (minusculo a) else a | a <- s]

solvetitle :: [Char] -> Int -> Char -> [Char]
solvetitle [] _ _ = []
solvetitle (p:l) ia ca | ia == 0 = (upper [p])++(solvetitle l (ia+1) p)
                       | (ca == ' ') && (p /= ' ') = (upper [p])++(solvetitle l (ia+1) p)
                       | (ca /= ' ') = (down [p])++(solvetitle l (ia+1) p)
                       | otherwise = [p]++(solvetitle l (ia+1) p)

titulo :: [Char] -> [Char]
titulo s = solvetitle s 0 ' '