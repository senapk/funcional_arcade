-- quadperf n = if length ([y | y <-[1..n], (y*y)==n]) > 0 then True else False

quadperf' i n
    | i * i == n = True
    | i * i > n = False
    | otherwise = quadperf' (i + 1) n

quadperf n = quadperf' 1 n