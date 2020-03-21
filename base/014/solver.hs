{--
elemento x xs = let
        len = length xs 
        x' = if x < 0 then x + len else x
        in xs !! x'
--}

fn ind (x:xs) = if ind == 0 then x else fn (ind - 1) xs

elemento ind xs = fn ind' xs
        where len = length xs 
              ind' = if ind < 0 then ind + len else ind
        