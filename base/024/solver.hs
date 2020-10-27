import Data.List

-- unique [] = []
-- unique [x] = [x]
-- unique (x:xs) = x : unique [y | y<-xs, y/=x]

unique xs = Data.List.nub xs