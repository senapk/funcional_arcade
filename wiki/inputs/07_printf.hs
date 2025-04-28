import Text.Printf ( printf ) -- importando print

main = do
    value <- readLn :: IO Float
    [hora, minuto] <- map (read :: String -> Int) . words <$> getLine
    -- imprimindo float com 2 casas decimais
    printf "%.2f\n" (value :: Float)
    printf "%02d:%02d\n" (hora :: Int) (minuto :: Int)
