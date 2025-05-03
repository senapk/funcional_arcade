import Data.List (lookup, elemIndex)
import Data.Maybe (fromMaybe, fromJust)

toLower :: Char -> Char
toLower c = fromMaybe c $ lookup c $ zip ['A'..'Z'] ['a'..'z']

letterToInt :: Char -> Int
letterToInt c = fromJust $ elemIndex c ['a'..'z']

intToLetter :: Int -> Char
intToLetter value = ['A'..'Z'] !! value

cypherSum :: (Int -> Int -> Int) -> Char -> Char -> Char
cypherSum op a b = intToLetter $ op (letterToInt . toLower $ a) (letterToInt . toLower $ b) `mod` 26

cifrar :: [Char] -> [Char] -> [Char]
cifrar texto senha = zipWith (cypherSum (+)) texto $ cycle senha
decifrar :: [Char] -> [Char] -> [Char]
decifrar texto senha = zipWith (cypherSum (-)) texto $ cycle senha