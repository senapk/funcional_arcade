main = do
    i <- readLn :: IO Int    -- pega um inteiro
    f <- readLn :: IO Float  -- pega um float
    (l, c) <- readLn :: IO (Int, Float) -- pega dois inteiros
    lista <- readLn :: IO [Int] -- pega uma lista de inteiros
    print i
    print f
    print (l, c)
    print lista