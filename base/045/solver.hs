bubble [] = []
bubble [x] = [x]
bubble x = if sorted x then x else bubble(bubbleSort x)

bubbleSort [] = []
bubbleSort [x] = [x]
bubbleSort (x:y:xs)
			| x >= y = y:(bubbleSort (x:xs))
			| otherwise = x:(bubbleSort (y:xs))

sorted [] = True
sorted [x] = True
sorted (x:y:xs) = if x<y then sorted (y:xs) else False 