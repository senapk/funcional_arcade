fn [] = True
fn [x] = True
fn (x:y:xs) = x <= y && fn (y:xs)

ordenada = fn