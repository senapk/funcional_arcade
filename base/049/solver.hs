text :: Int -> Char
text ind = (['0'..'9']++['A'..'Z']) !! ind

base :: Int -> Int -> [Char]
base 0 b = []
base n b = base (div n b) b ++ [text (mod n b)]