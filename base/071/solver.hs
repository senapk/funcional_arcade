myMap _ [] = []
myMap fn (x:xs) = fn x : myMap fn xs

main = do
    print $ myMap (+1) [1, 2, 3] == [2, 3, 4]
    print $ myMap (odd) [6,2,1] == [False, False, True]