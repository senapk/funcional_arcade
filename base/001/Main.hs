interior = drop 1 . reverse . drop 1. reverse 

main = do
    line <- getLine
    print $ interior [read x :: Int | x <- words line]
