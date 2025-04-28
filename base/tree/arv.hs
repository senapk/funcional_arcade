{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

data Tree a = Null | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)  

treeInsert :: (Ord a) => Tree a -> a -> Tree a  
treeInsert Null x = Node x Null Null  
treeInsert (Node a left right) x 
    | x == a = Node x left right  
    | x < a  = Node a (treeInsert left x) right  
    | x > a  = Node a left (treeInsert right x)

treeMake :: (Ord a) => [a] -> Tree a
treeMake = foldl treeInsert Null

treeElem :: (Ord a) => a -> Tree a -> Bool  
treeElem x Null = False  
treeElem x (Node a left right)  
    | x == a = True  
    | x < a  = treeElem x left  
    | x > a  = treeElem x right

findSubs :: Ord a => Tree a -> a
findSubs (Node a left right) | right == Null = a
                             | otherwise = findSubs right

removeNode :: Ord a => Tree a -> Tree a
removeNode (Node a Null Null) = Null
removeNode (Node a Null right) = right
removeNode (Node a left Null) = left
removeNode (Node a left right) = Node newvalue newleft right
                                    where newvalue = findSubs left
                                          newleft  = treeDelete newvalue left

treeDelete :: (Ord a) => a -> Tree a -> Tree a
treeDelete x Null = Null
treeDelete x (Node a left right) | x < a = Node a (treeDelete x left) right
                                 | x > a = Node a left (treeDelete x right)
                                 | otherwise = removeNode (Node a left right)


tshow :: Show a => Tree a -> Int -> [Char]
tshow node level = case node of
            Null              -> tab level ++ "#\n"
            Node a Null Null  -> tab level ++ show a ++ "\n"
            Node a left right -> tshow left (level + 1) ++ tab level ++ show a ++ "\n" ++ tshow right (level + 1)
            where 
                tab level = concat . replicate (2 * level) $ " "

treeShow :: Show a => Tree a -> [Char]
treeShow node = tshow node 0

treeSum :: Num p => Tree p -> p
treeSum Null = 0
treeSum (Node a left right) = a + treeSum left + treeSum right

treeDeeph :: Num p => Tree p -> Int
treeDeeph Null = 0
treeDeeph (Node a left right) = max(treeDeeph left) (treeDeeph right)


main = do
--     putStr $ treeShow . makeTree $ [1,2,3,4,5,6,7,8,9,10]
    putStr $ treeShow . treeMake $ [5, 2, 7, 1, 3, 4, 6, 8, 9]



