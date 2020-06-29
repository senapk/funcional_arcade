compac [] = []
compac x = if length partU > 1 then [[head x, (length partU)]]++(compac partD) else [[head x]]++(compac partD)
	where partU = takeWhile (==(head x)) x
	      partD = dropWhile (==(head x)) x