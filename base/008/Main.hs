--sublist begin' end' xs = let
--    size  = length xs
--    begin = if begin' < 0 then begin' + size else begin'
--    end   = if end' < 0   then end' + size   else end'
--    in drop begin . take end $ xs


sublist begin' end' xs = drop begin . take end $ xs
    where size  = length xs
          begin = if begin' < 0 then begin' + size else begin'
          end   = if end' < 0   then end' + size   else end'

main = do
    begin <- readLn :: IO Int
    end   <- readLn :: IO Int
    line  <- getLine
    print $ sublist begin end [read x :: Int | x <- words line]
