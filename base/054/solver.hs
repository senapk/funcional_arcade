swap :: [Int] -> Int -> Int -> [Int]
swap u q p = if length u < (q+1) || length u < (p+1) || p==q then u else (if q > p then swap u p q else nova)
    where nova = part1++[(u !! p)]++part2++[(u !! q)]++part3
          part1 = fst (splitAt q u)
          part2 = snd(splitAt (q+1) (fst (splitAt p u)))
          part3 = snd (splitAt (p+1) u)