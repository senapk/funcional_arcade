-- rev' :: Int -> Int -> Int
-- rev' 0 y = y
-- rev' x y = rev' (div x 10) (y * 10 + mod x 10)

-- rev :: Int -> Int
-- rev x = rev' x 0

rev' :: Int -> (Int, Int)
rev' x | x < 10 = (x, 10) 
      | otherwise = (digito * pot + valor, pot * 10) 
      where (valor, pot) = rev' (div x 10)
            digito = x `mod` 10

rev = fst . rev'