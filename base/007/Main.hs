gangorra p1 c1 p2 c2 =  
    if p1 * c1 == p2 * c2 then
        0
    else if p1 * c1 < p2 * c2 then
        1
    else
        -1

--opcao com guards
--gangorra p1 c1 p2 c2
--  | p1 * c1 == p2 * c2 = 0
--  | p1 * c1 < p2 * c2  = 1
--  | otherwise          = -1

main = do
    line <- getLine
    let list = [read x :: Int | x <- words line]
    print $ gangorra (list !! 0) (list !! 1) (list !! 2) (list !! 3)
