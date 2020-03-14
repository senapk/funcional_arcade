entry value qtd = if qtd /= 1 then [[value, qtd]] else [[last]]

-- se cheguei no fim da lista, insiro a entrada do ultimo elemento
compac' [] last qtd = entry last qtd
-- se o atual eh igual ao anterior, incremento a qtd e invoco a recursao
-- se eh diferente, insiro o elemento anterior na lista
compac' (x:xs) last qtd = if x == last
                         then compac' xs last (qtd + 1)
                         else entry last qtd ++ compac' xs x 1

compac (x:xs) = compac' xs x 1

main = do
    vet <- readLn :: IO [Int]
    print $ compac vet
