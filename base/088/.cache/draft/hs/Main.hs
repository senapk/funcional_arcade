import Text.Printf
main = do
    value <- readLn :: IO Float
    times <- readLn :: IO Float
    let total = calc value times
    printf "%.2f\n" (total / times :: Float)
    printf "%.2f\n" (total :: Float)
