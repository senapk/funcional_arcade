ehPrimo :: Int -> Bool 
ehPrimo num = null [x | x <- [2..(floor . sqrt . fromIntegral) num], num `mod` x == 0]


