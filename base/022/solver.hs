
tails :: [a] -> [[a]]
tails [] = [[]]
tails (x:xs) =  [x:xs] ++ tails(xs)