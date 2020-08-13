-- na pior das hipóteses ele encontra o char na ultima posicao
mapa c = zip ['a'..'z'] ['A'..'Z'] ++ [(c, c)]

-- agora pegamos a posicao onde ele aparece primeiro
myupper c = head [snd y | y <- mapa c, (fst y) == c]

upper s = map myupper s