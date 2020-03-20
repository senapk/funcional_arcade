--somaImpares xs = sum [x | x <- xs, odd x]
somaImpares xs = sum $ filter odd xs
--somaImpares = sum . filter odd

