unique [] = []
unique [x] = [x]
unique (x:xs) = x : unique [y | y<-xs, y/=x]
