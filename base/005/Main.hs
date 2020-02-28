neglist xs = length $ filter (<0) xs

main = do
    line <- getLine
    print $ neglist [read x :: Int | x <- words line]


