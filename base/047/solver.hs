splitints :: Integral a => [a] -> ([a], [a])
splitints u = ([x | x<-u, odd x], [x | x<-u, even x])