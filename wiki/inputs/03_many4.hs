int v = read v :: Int

main :: IO ()
main = do
    xs <- map int . words <$> getLine
    print xs