import Control.Monad (replicateM)

main = do
    size <- readLn :: IO Int
    vet <- replicateM size (readLn :: IO Int)
    print vet
