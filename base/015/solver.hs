-- pertence x xs = x `elem` xs


-- pertence x xs = not (null (filter (==x) xs))

pertence y [] = False
pertence y (x:xy) = y == x || pertence y xy
