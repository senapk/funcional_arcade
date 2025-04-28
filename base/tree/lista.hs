infixr 5 :-:
data List v = Null | v :-: (List v) | Node v (List v) deriving (Show, Read, Eq, Ord)

listShow :: Show v => List v -> String
listShow Null = "#"
listShow (Node v next) = show v ++ " -> " ++ listShow next

(.++) :: List v -> List v -> List v
Null .++ node = node
(Node v next) .++ node = v :-: (next .++ node)

toList :: List v -> [v]
toList Null = []
toList (Node v next) = v : toList next

fromList :: [v] -> List v
fromList = foldr Node Null


