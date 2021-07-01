myfilter :: (a -> Bool) -> [a] -> [a]
myfilter _ [] = []
myfilter fn (x:xs)
            | fn x == True = x : myfilter fn xs
            | otherwise = myfilter fn xs

main = do
    print $ myfilter (>5) [0..10] == [6,7,8,9,10]
    print $ myfilter (odd) [0..10] == [1,3,5,7,9]