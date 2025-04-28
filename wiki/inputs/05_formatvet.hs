import Data.List ( intercalate )

main = do
    vetInt <- fmap (map (read :: String -> Int) . words) getLine
    let vetStr = map show vetInt -- transformando em string
    putStrLn $ "[ " ++ intercalate " " vetStr ++ " ]"
