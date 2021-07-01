-- inits [1,3,5]  == [[],[1],[1,3],[1,3,5]] 
inits :: [a] -> [[a]]
inits [] = [[]]
inits xs = inits sem_rabinho ++ [xs]
    where sem_rabinho = reverse . tail . reverse $ xs