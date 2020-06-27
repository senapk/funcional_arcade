intercal [] x = x
intercal x [] = x
intercal (x:xs) (y:ys) = x:y:(intercal xs ys)