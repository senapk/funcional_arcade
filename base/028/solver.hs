divide :: [a] -> Int ->([a],[a])
divide u n = (listU u n,listD u n)
    where listU u n = if n > 0 then (head u):(listU (tail u) (n-1)) else [] 
    	  listD u n= if n > 0 then (listD (tail u) (n-1)) else u