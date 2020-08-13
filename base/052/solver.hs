rev' :: Int -> Int -> Int
rev' 0 y = y
rev' x y = rev' (div x 10) (y * 10 + mod x 10)

rev :: Int -> Int
rev x = rev' x 0