-- lista com os numeros menores que x
lista_menores x xs = [y | y <- xs, y < x] 

-- lista com a qtd de números menores
qtd_menores xs = [length [y | y <- xs, y < x] | x <- xs]

-- para cada elemento, vê quantos ele repetiu, se for menor que n, ele entra
-- depois pega os n primeiros elementos
menores n xs = take n [fst x | x <- zip xs [length [y | y <- xs, y < x] | x <- xs], snd x < n]
