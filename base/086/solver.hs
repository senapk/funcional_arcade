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

main :: IO ()
main = do
    size <- readLn :: IO Int
    vet <- replicateM size getLine -- [String]
    let index = searchBest vet
    if index == -1
    then
        putStrLn "sem ganhador"
    else
        print index
