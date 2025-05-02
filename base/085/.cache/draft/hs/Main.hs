import Control.Monad (replicateM)

main :: IO ()
main = do
    [nl, nc] <-  map (read :: String -> Int) . words <$> getLine
    mat <- replicateM nl getLine
    let (_, _, mat') = burn (nl, nc, mat) (0, 0)
    mapM_ putStrLn mat' -- imprime linha a linha a matriz
