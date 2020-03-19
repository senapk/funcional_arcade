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

