uniao x [] = x
uniao [] x = x
uniao x (y:ys) = if elem y x then uniao x ys else uniao (x++[y]) ys 