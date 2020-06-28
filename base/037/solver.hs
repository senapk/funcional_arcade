rotEsq :: Int -> [Char] -> [Char]
rotEsq 0 s = s
rotEsq n s = (rotEsq (n-1) ((tail s)++[head s]))