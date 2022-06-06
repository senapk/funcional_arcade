import Data.List ( intercalate )

main = do
    vet <- fmap (map (read :: String -> Int) . words) getLine
    let vet2 = map (+10) vet -- somando + 10
    let vet3 = map show vet2 -- transformando em string
    putStrLn $ "[ " ++ intercalate " " vet3 ++ " ]"