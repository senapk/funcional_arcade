import Control.Monad (replicateM)

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
