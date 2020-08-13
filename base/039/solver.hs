myToUpper c = head [snd y | y <- mapa c, (fst y) == c]   -- agora pegamos a posicao onde ele aparece primeiro
    where mapa c = zip ['a'..'z'] ['A'..'Z'] ++ [(c, c)] -- na pior das hipóteses ele encontra o char na ultima posicao
    
upper s = map myToUpper s