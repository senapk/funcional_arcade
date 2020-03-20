sublist begin' end' xs = drop begin . take end $ xs
    where size  = length xs
          begin = if begin' < 0 then begin' + size else begin'
          end   = if end' < 0   then end' + size   else end'

