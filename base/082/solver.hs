filterMaybe :: [Maybe Int] -> [Int]
filterMaybe xs = [x | (Just x) <- xs]

countNothing xs = length [1 | (Nothing) <- xs]

main = do
    print $ filterMaybe [Just 5,Nothing,Just 7,Nothing] == [5,7]
    print $ filterMaybe [Just 5,Just 4,Just 7,Nothing] == [5,4,7]
    print $ countNothing [Nothing, Just 4, Nothing] == 2