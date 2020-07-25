import Data.List

menores' 0 xs selecionados aux = aux
menores' n [] selecionados aux = aux
menores' n (x:xs) selecionados aux = if x `elem` selecionados
    then
        menores' (n-1) xs selecionados (aux++[x])
    else
        menores' n xs selecionados aux

menores n xs = menores' n xs (take n (sort xs)) []