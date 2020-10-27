-- inits [1,3,5]  == [[],[1],[1,3],[1,3,5]] 
inits :: [a] -> [[a]]
inits [] = [[]]
inits xs = inits sem_rabinho ++ [xs]
    where sem_rabinho = reverse . tail . reverse $ xs

-- tails [1,3,5] == [[1,3,5],[3,5],[5],[]] 
tails :: [a] -> [[a]]
tails [] = [[]]
tails (x:xs) =  [x:xs] ++ tails(xs)

concatmap :: (a -> [b]) -> [a] -> [b]
concatmap fn xs = foldl (++) [] (map fn xs)

all_subseq xs = concatmap inits . tails $ xs


max_by :: (a -> a -> Ordering) -> [a] -> a
max_by fn_cmp xs = foldl comp (head xs) (tail xs)
    where comp x y = if fn_cmp x y == GT then x else y 
-- max_subseq :: [a] -> a
-- max_by fn xs = foldr comp (head pairs) $ (tail pairs) -- usa o primeiro como inicio
--     where pairs = zip xs $ map sum xs -- junta os vetores com suas somas
--           comp x y = if snd x > snd y then x else y -- compara usando os valores, guard o par

my_compare fn x y = compare (fn x) (fn y)

maxsubseq xs = max_by (my_compare sum) $ all_subseq xs