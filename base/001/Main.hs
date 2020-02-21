
main = do
   inputdata <- getContents
   print $ interior $ map (read :: String->Int) (lines inputdata)
