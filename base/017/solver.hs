--maior [x] = x
--maior (x:xs) = if gr > x then gr else x
--            where gr = maior xs

maior xs = foldr max 0 xs