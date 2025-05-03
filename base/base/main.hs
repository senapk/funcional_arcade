numnabase :: Int -> Char
numnabase n = (['0'..'9']++['A'..'Z']) !! n

primpotmqn :: Int -> Int -> Int -> Int
primpotmqn n ba e | (ba^e) > n = (ba^(e-1))
                  | otherwise = (primpotmqn n ba (e+1))

baseprimpotmqn :: Int -> Int -> Int -> Int
baseprimpotmqn n ba e | (ba^e) > n = (e-1)
                      | otherwise = (baseprimpotmqn n ba (e+1))

repete :: Int -> Char -> [Char]
repete n c | n == 0 = []
           | otherwise = [c]++(repete (n-1) c)

sbase :: Int -> Int -> Int -> [Char]
sbase 0 _ e = (repete (e+1) '0')
sbase n b e | (b^e) > n = ['0']++(sbase n b (e-1))
            | otherwise = [(numnabase (div n (primpotmqn n b 0)))]++(sbase (mod n (primpotmqn n b 0)) b (e-1))

base :: Int -> Int -> [Char]
base n b = sbase n b (baseprimpotmqn n b 0)