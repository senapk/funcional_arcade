import Control.Monad (replicateM)

calc :: (Int, Int) -> Int
calc (a, b) = abs (a - b)

choose :: ((Int, Int), Int) -> ((Int, Int), Int) -> ((Int, Int), Int)
choose (ab, i) (ab', i') = if calc ab < calc ab' then (ab,i) else (ab',i')


searchBest :: [[Char]] -> Int
searchBest xs
    | null passed = -1
    | otherwise = snd $ foldl1 choose passed
        where
            vetInt = map decompose xs     -- [(Int, Int)]
            glued = zip vetInt [0..]      -- [((Int, Int), Int)]
            passed = filter (\((a,b), i) -> a >= 10 && b >= 10) glued


decompose :: [Char] -> (Int, Int)
decompose line = (head tokens, tokens !! 1)
    where
        tokens = map (read :: String -> Int) . words $ line

processa vet
    | res == -1 = "sem ganhador"
    | otherwise = show res
    where res = searchBest vet 

main :: IO ()
main = do
    print $ processa ["8 11", "10 15"] == "1"
    print $ processa ["9 12", "11 13", "10 11"] == "2"
    print $ processa ["12 15", "16 14", "10 9"] == "1"
    print $ processa ["12 15", "20 23", "10 9", "35 35"] == "3"
    print $ processa ["10 8", "9 13"] == "sem ganhador"
    print $ processa ["8 9", "12 7"] == "sem ganhador"
    print $ processa ["10 9", "15 19"] == "1"
    print $ processa ["9 8", "9 12", "12 15", "18 19"] == "3"
