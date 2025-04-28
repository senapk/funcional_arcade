import Data.List ( intercalate ) 
import Text.Printf ( printf )

process :: String -> String
process line
    | cmd == "sum" = show $ int a + int b
    | cmd == "half" = fmt2 $ float a / 2
    | otherwise = "comando invalido"
    where 
        xs = words line
        cmd = head xs
        int   value = read value :: Int
        float value = read value :: Float
        fmt2   value = printf "%.2f" value :: String
        a = xs !! 1
        b = xs !! 2

main :: IO ()
main = do
    line_list <- takeWhile (/="end") . lines <$> getContents
    putStrLn $ intercalate "\n" . map process $ line_list
