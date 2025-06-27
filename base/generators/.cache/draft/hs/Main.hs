main :: IO ()
main = do
    entrada <- getLine
    let args = words entrada
    case args of
        ["gerador1"]         -> print (take 10 gerador1)
        ["gerador2"]         -> print (take 10 gerador2)
        ["gerador3"]         -> print (take 10 gerador3)
        ["gerador4", nStr]   -> print (gerador4 (read nStr))
