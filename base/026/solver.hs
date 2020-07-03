alter :: Int -> [Int]
alter 0 = []
alter 1 = [1, -1]
alter n = alter (n-1) ++ [n, -n]