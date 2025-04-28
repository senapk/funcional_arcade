
data List v = Null | Node v (List v) | v :-: (List v) deriving (Show, Read, Eq, Ord)

teste1 :: IO ()
teste1 =
    print $ show (Node 1 . Node 4 . Node 2. Node 6 $ Null) == "Node 1 (Node 4 (Node 2 (Node 6 Null)))"


listShow :: Show a => List a -> String
listShow lista = case lista of
                    Null            -> "Null"
                    Node value next -> show value ++ " -> " ++ listShow next
                    value :-: next  -> show value ++ " -> " ++ listShow next
                    

fromHL :: [v] -> List v
fromHL = foldr Node Null

teste2 :: IO ()
teste2 = print $ (listShow . fromHL $ [1,2,6,3,4]) == "1 -> 2 -> 6 -> 3 -> 4 -> Null"

pushFront :: v -> List v -> List v
pushFront value lista = Node value lista

pushBack :: t -> List t -> List t
pushBack value Null = Node value Null
pushBack value (Node x next) = Node x (pushBack value next)

teste3 = listShow $ pushBack 0 . pushFront 5 . fromHL $ [1,2,3,4]
