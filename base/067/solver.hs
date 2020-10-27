concatmap :: (a -> [b]) -> [a] -> [b]
concatmap fn xs = foldl (++) [] (map fn xs)

