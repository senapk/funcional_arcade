-- data List a = Empty | Cons a (List a) deriving (Show, Read, Eq, Ord)

-- List 5 não é uma lista com valor 5
-- Empty é uma lista vazia
-- 3 `Cons` (4 `Cons` (5 `Cons` Empty))  

infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)
-- 3 :-: 4 :-: 5 :-: Empty  


infixr 5  .++
(.++) :: List a -> List a -> List a
Empty .++ ys = ys
(x :-: xs) .++ ys = x :-: (xs .++ ys)


infixr 5 .==
(.==) :: Eq a => List a -> List a -> Bool
Empty .== Empty = True
Empty .== _ = False
_ .== Empty = False
(x :-: xs) .== (y :-: ys) = x == y && (xs .== ys)


toList :: List a -> [a]
toList Empty = []
toList (x :-: xs) = x : toList xs


sortedInsert :: Ord a => a -> List a -> List a
sortedInsert v Empty = v :-: Empty
sortedInsert v (x :-: xs) | v <= x = v :-: x :-: xs
                          | otherwise = x :-: sortedInsert v xs


sort :: Ord a => [a] -> List a
sort = foldr sortedInsert Empty

-- toList $ sort [5,3,1,2,3,5,6,7,8,5,4,3,2]

remove :: Ord a => a -> List a -> List a
remove y Empty = Empty
remove y (x :-: xs) | x == y = xs
                    | otherwise = x :-: remove y xs

-- toList $ remove 1 $ sort [5,3,1,2,3,5,6,7,8,5,4,3,2]



