

-- This part handles the Input/Output and can be used as it is. Do not change or modify it.
main = do
    inputdata <- getContents
    putStrLn $ show $ somaImpares $ map (read :: String -> Int) $ lines inputdata
