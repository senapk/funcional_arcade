fn [] = True
fn [x] = True
fn (x:y:xs) = x <= y && fn (y:xs)

main = do
    vet <- readLn :: IO [Int]
    print $ fn vet 