splitints u = (partImpar,partPar)
	where partPar = [x | x<-u, (mod x 2)==0]
		  partImpar = [x | x<-u, (mod x 2)/=0]