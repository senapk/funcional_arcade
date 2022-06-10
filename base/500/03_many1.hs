main :: IO ()
main = do
    line <- getLine -- lendo a linha
    -- (words line) gera um vetor de palavras
    -- map (read :: String -> Int) converte para vetor de inteiros
    let xs = map (read::String -> Int) . words $ line
    print xs