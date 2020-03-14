fn [] = True
fn [x] = True
fn (y:x:xs) = (y + 1 == x) && fn(x:xs)

main = do
    vet <- readLn :: IO [Int]
    print $ fn vet