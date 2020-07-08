rev :: Int -> Int
rev 0 = 0
rev x = (mod x 10)* round(10**((numCasas x)-1))+(rev (div x 10))
    where numCasas x = if x == 0 then 0 else (numCasas (div x 10))+1