eh_primo :: Integral a => a -> Bool
eh_primo n = if length ([d | d<-[2..(n-1)], (mod n d)==0]) > 0 then False else True

list_primos :: Integral a => a -> [a]
list_primos n = [x | x <- [2..n], eh_primo x]

max_pot :: (Integral t, Num p) => t -> t -> p
max_pot v x = if v `mod` x == 0 then (1 + max_pot (v `div` x) x) else 0

--factors' :: Int -> Int -> [(Int, Int)]
factors' 1 _ = []
factors' v i  
        | eh_primo i && res /= 0 = (i, res) : factors' sobra (i + 1)
        | otherwise = factors' v (i + 1)
        where res = max_pot v i
              sobra = div v (i ^ res)



--factors :: Int -> [(Int, Int)]
factors v = factors' v 2