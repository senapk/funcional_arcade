--gangorra p1 c1 p2 c2 =  
--    if p1 * c1 == p2 * c2 then 0
--    else if p1 * c1 < p2 * c2 then 1
--    else -1

--opcao com guards
gangorra p1 c1 p2 c2
  | cri1 == cri2 = 0
  | cri1 < cri2  = 1
  | otherwise          = -1
  where cri1 = p1 * c1
        cri2 = p2 * c2

