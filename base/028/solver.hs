divide :: [a] -> Int ->([a],[a])
divide xs n = (take n xs, drop n xs)