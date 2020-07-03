reverso [] = []
reverso [x] = [x]
reverso (x:xs) = reverso xs ++ [x]