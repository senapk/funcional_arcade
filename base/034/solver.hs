ordenada [] = True
ordenada [x] = True
ordenada u = if (head u) <= (head (tail u)) then ordenada (tail u) else False