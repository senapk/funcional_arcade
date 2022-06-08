import Control.Monad (replicateM)

split :: [a] -> Int -> ([a], a, [a])
split xs index = (before, center, after)
    where before = take index xs
          center = xs !! index
          after = drop (index + 1) xs

setL :: [a] -> Int -> a -> [a]
setL xs index value = before ++ [value] ++ after
    where   (before, _, after) = split xs index

-- parametros: 
-- mat matriz bidimensional
-- l linha
-- c coluna
-- v novo valor
-- retorna: matriz com o valor substituido
setM :: [[a]] -> Int -> Int -> a -> [[a]]
setM mat l c v = before ++ [center] ++ after
    where   (before, center', after) = split mat l
            center = setL center' c v



-- parametros:
-- l linha
-- c coluna
-- retorna: lista com os vizinhos de uma posição
neighbors :: (Num a1, Num a2) => a1 -> a2 -> [(a1, a2)]
neighbors l c = [(l - 1, c), (l + 1, c), (l, c - 1), (l, c + 1)]

burn :: (Int, Int, [String]) -> (Int, Int) -> (Int, Int, [String])
burn (nl, nc, mat) (l, c)
    | l < 0 || l >= nl || c < 0 || c >= nc = (nl, nc, mat)
    | mat !! l !! c /= '#' = (nl, nc, mat)
    | otherwise = foldl burn seed (neighbors l c)
    where
        seed = (nl, nc, setM mat l c 'o')

main :: IO ()
main = do
    [nl, nc] <-  map (read :: String -> Int) . words <$> getLine
    mat <- replicateM nl getLine
    let (nl', nc', mat') = burn (nl, nc, mat) (0, 0)
    mapM_ putStrLn mat' -- imprime linha a linha a matriz
