-- fatorial n = product [1..n]

fatorial 0 = 1
fatorial n
    | n < 0 = 0
    | otherwise = fatorial (n - 1) * n
