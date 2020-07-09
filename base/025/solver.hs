maioresQue y xs = [x | x <- xs, x > y]

menores :: Int -> [Int] -> [Int]
menores n u = [x | x <- u, (length (maioresQue x u)) >= ((length u) - n)]