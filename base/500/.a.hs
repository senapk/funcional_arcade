-- fmap é capaz de aplicar uma função ao getline diretamente
main :: IO ()
main = do
    xs <- map (read :: String->Int) . words <$> getLine
    print xs
