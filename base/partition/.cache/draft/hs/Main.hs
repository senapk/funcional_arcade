main :: IO ()
main = do
    list <- readLn :: IO [Int]
    putStrLn $ "odd " ++ show (splitints odd list)
    putStrLn $ "(<5) " ++ show (splitints (<5) list)
