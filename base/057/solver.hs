buscaBin [] v = -1
buscaBin [x] v = if x == v then 0 else -1
buscaBin u v = if u !! meio == v then meio else (if u !! meio < v then (buscaBin (snd (splitAt (meio+1) u)) v)+meio+1 else buscaBin (fst (splitAt meio u)) v) 
    where meio = div (length u) 2
