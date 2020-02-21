

main = do
    inputdata <- getContents
    let entrada = lines inputdata
    let n       = read( entrada !! 0 )
    print $ final n $ map (read :: String->Int) (tail entrada)
