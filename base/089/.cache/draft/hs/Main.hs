import Data.List ( intercalate ) 
import Text.Printf ( printf )

main :: IO ()
main = do
    line_list <- takeWhile (/="end") . lines <$> getContents
    putStrLn $ intercalate "\n" . map process $ line_list
    
