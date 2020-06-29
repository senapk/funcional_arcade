inserir x [] = [x]
inserir x u = if x < head u then (x:u) else (head u):(inserir x (tail u))