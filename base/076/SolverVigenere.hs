
import Data.Maybe ( fromMaybe, fromJust )
import Data.List (elemIndex)

toLower :: Char -> Char
toLower c = fromMaybe c $ lookup c $ zip ['A'..'Z'] ['a'..'z']

letterToInt :: Char -> Int
letterToInt letter = fromMaybe (-1) $ elemIndex (toLower letter) ['a'..'z']

intToLetter:: Int -> Char
intToLetter value = fromJust $ lookup value $ zip [0..] ['A'..'Z']

cypherSum :: (Int -> Int -> Int) -> Char -> Char -> Char
cypherSum op v k = intToLetter $ op (letterToInt v) (letterToInt k) `mod` 26

cypher :: [Char] -> [Char] -> (Int -> Int -> Int) -> [Char]
cypher text key op = zipWith (cypherSum op) (map toLower text) $ cycle (map toLower key)

vigenere clear key = cypher clear key (+)
unvigenere coded key = cypher coded key (-)
