-- maioresQue y xs = filter (>y) xs

maioresQue y xs = [x | x <- xs, x > y]
