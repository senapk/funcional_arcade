indices :: Eq a => a -> [a] -> [Int]
indices x xs =[i | (x',i) <- zip xs [0..n], x == x']
    where n = length xs - 1