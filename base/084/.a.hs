import Data.List
import Data.Maybe

-- retorna o subvetor incluindo o elemento posição índice e lim elementos a esquerda e a direita
neib :: [a] -> Int -> Int -> [a]
neib xs index lim = drop lower . take upper $ xs
    where lower = max 0 (index - lim)
          upper = min (length xs) (index + lim + 1)

neibTest :: IO ()
neibTest = do
    print $ neib "abcdef.." 0 2 == "abc"
    print $ neib "abc.def"  3 1 == "c.d"
    print $ neib "abc.def"  3 2 == "bc.de"
    print $ neib "abc.def"  1 2 == "abc."
    print $ neib "abc.def"  5 3 == "c.def"

dig2char :: (Eq a, Num a, Enum a) => a -> Char
dig2char dig = fromJust $ lookup dig $ zip [0..] "0123456789"

dig2charTest = do
    print $ map dig2char [0..9] == ['0'..'9']

exists :: Eq a => a -> [a] -> Bool
exists y xs = isJust $ elemIndex y xs

fit :: (String, Int) ->  Int -> Int -> Bool
fit (xs, lim) index value = not . exists (dig2char value) $ neib xs index lim

fitTest = do -- (fit ("12.345", 1) 2) se torna uma função curry faltando só uma var que seria o valor recebido do vetor
    print $ map (fit ("12.345", 1) 2) [1,2,3,4,5] == [True, False, False, True, True]
    print $ map (fit ("12.345", 2) 2) [1,2,3,4,5] == [False, False, False, False, True]
    print $ map (fit ("12.345", 3) 2) [1,2,3,4,5] == [False, False, False, False, False]
    print $ map (fit ("12345.", 4) 5) [1,2,3,4,5] == [True, False, False, False, False]


getHoles :: String -> [Int]
getHoles xs = [i | (c, i) <- zip xs [0..], c == '.']

set :: String -> Int -> Char -> String
set xs index v = take index xs ++ [v] ++ drop (index + 1) xs

setTest = do
    print $ set "12345" 0 '9' == "92345"
    print $ set "12345" 1 '9' == "19345"
    print $ set "12345" 4 '9' == "12349"

fitValues :: String -> Int -> Int -> [Int]
fitValues xs lim index = [v | v <- [0..lim], fit (xs, lim) index v]


solve :: (String, Int) -> [Int] -> Int -> Maybe String
solve (xs, lim) holes hindex
    | hindex == size = Just xs
    | null fvalues = Nothing
    | otherwise = if null answers then Nothing else head answers
    where
        size = length holes
        index = holes !! hindex
        fvalues = fitValues xs lim index
        branches = [solve (set xs index (dig2char v), lim) holes (hindex + 1) | v <- fvalues]
        answers = [Just ans | (Just ans) <- branches]

mainSolver :: String -> Int -> String
mainSolver xs lim = fromJust $ solve (xs, lim) (getHoles xs) 0

main = do
    xs <- getLine
    lim <- readLn :: IO Int
    putStrLn $ mainSolver xs lim
-- solve data lim = solve' data lim (getHoles data) 0


