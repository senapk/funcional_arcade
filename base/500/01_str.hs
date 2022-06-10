main = do
    line <- getLine
    value <- readLn :: IO Int
    putStrLn $ line ++ " " ++ show value