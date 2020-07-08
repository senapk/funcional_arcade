swap :: [a] -> Int -> Int -> [a]
swap u q p = if length u < (q+1) || length u < (p+1) || p==q then u else (if q > p then swap u p q else nova)
    where nova = part1++[(u !! p)]++part2++[(u !! q)]++part3
          part1 = fst (splitAt q u)
          part2 = snd(splitAt (q+1) (fst (splitAt p u)))
          part3 = snd (splitAt (p+1) u)


posicaoMaior [x] v = if x > v then 0 else -1
posicaoMaior u v = if maior /= -1 then maior+1 else (if head u > v then 0 else -1)
    where maior = (posicaoMaior (tail u) v)

maiorI :: [Int] -> Int
maiorI [] = -1
maiorI (x:[]) = -1
maiorI u = if head u < (head (tail u)) then (if result == -1 then 0 else (if head u < u !! (result+1) then result+1 else 0)) else (if result == -1 then -1 else result+1)
    where result = maiorI (tail u) 

nextPerm :: [Int] -> [Int]
nextPerm [] = []
nextPerm [x] = [x]
nextPerm u = if i == -1 then u else fst atupla ++ reverse(snd atupla)
    where atupla = (splitAt (i+1) swapado)
          swapado = (if i == -1 then [] else swap u i j)
          j = if i == -1 then -1 else (i+1)+(posicaoMaior(snd (splitAt (i+1) u)) (u !! i))
          i = maiorI u