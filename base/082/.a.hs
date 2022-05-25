filterMaybe :: [Maybe Int] -> [Int]
filterMaybe xs = [x | (Just x) <- xs]

main = do
    print $ filterMaybe [Just 5,Nothing,Just 7,Nothing] == [5, 7]
    print $ filterMaybe [Just 5,Nothing,Just 7,Nothing] == [5, 7]
