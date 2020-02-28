--somaImpares xs = sum [x | x <- xs, odd x]
somaImpares xs = sum $ filter odd xs
--somaImpares = sum . filter odd

main = do
    line <- getLine
    print $ somaImpares [read x :: Int | x <- words line]
