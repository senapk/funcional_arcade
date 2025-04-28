import Control.Monad (replicateM)
import Data.List ( intercalate )

main :: IO ()
main = do
    [nl, nc] <-  map (read :: String -> Int) . words <$> getLine
    mat <- replicateM nl getLine
    putStrLn $ intercalate "\n" mat
