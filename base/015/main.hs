import Data.List

--pertence x xs = not $ null [y | y <- xs, y == x]

-- pertence x xs = not $ null $ filter (== x) xs

-- pertence _ [] = False
-- pertence x (y:xs) = x == y || pertence x xs


-- pertence x xs = foldl fn False xs
--     where fn y z = y || z == x

