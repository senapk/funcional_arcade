-- montando esquerda elem meio elem direita
swap' ::  [a] -> Int -> Int -> [a]
swap' xs i j = left ++ [elemJ] ++ middle ++ [elemI] ++ right
    where elemI = xs !! i
          elemJ = xs !! j
          left = take i xs
          middle = take (j - i - 1) (drop (i + 1) xs)
          right = drop (j + 1) xs  

-- verificando indices
swap ::  [a] -> Int -> Int -> [a]
swap xs i j = if (i <= tam) && (j <= tam) then swap' xs i j else xs
    where tam = length xs