primeiros [] = []
primeiros [x] = []
primeiros (x:xs) = x:(primeiros xs)