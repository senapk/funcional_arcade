qsort [] = []
qsort (x:xs) =
	let menor = qsort [z | z<-xs, z<=x]
	    maior = qsort [z | z<-xs, z>x]
	in  menor++[x]++maior