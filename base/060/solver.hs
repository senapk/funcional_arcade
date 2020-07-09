listamax :: [Int] -> Int -> [Int] -> [Int] -> [Int]
listamax [] _ lm _ = lm
listamax (p:l) va lm lac | (va + p) > (sum lm) = (listamax l (va+p) (lac++[p]) (lac++[p]))
                         | p > 0 = (listamax l (va+p) lm (lac++[p]))
                         | (va+p) > 0 = (listamax l (va+p) lm (lac++[p]))
                         | otherwise = (listamax l 0 lm [])

maxsseq :: [Int] -> [Int]
maxsseq l = (listamax l 0 [] [])