

main = do
   inputdata <- getContents
   print $ neglist $ map (read :: String->Int) (lines inputdata)
