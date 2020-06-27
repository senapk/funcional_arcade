corpo [] = []
corpo [x] = []
corpo (x:xs) = x:(corpo xs)