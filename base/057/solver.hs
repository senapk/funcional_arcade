binsearch :: [Int] -> Int -> Int -> Int -> Int -- list, value, low, high, return int
binsearch xs value low high
   | high < low       = -1
   | xs!!mid > value  = binsearch xs value low (mid-1)
   | xs!!mid < value  = binsearch xs value (mid+1) high
   | otherwise        = mid
   where
   mid = low + ((high - low) `div` 2)

buscaBin xs v = binsearch xs v 0 (length xs - 1)