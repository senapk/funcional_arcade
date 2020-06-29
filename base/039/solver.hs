upper s = map qisso s
    where qisso c = if (length (grande c)) == 1 then head (grande c) else c
          grande s = [snd y |y<-lista, (fst y)==s || (snd y)==s]
          lista = [('a','A'),('b','B'),('c','C'),('d','D'),('e','E'),('f','F'),('g','G'),('h','H'),('i','I'),('j','J'),('k','K'),('l','L'),('m','M'),('n','N'),('o','O'),('p','P'),('q','Q'),('r','R'),('s','S'),('t','T'),('u','U'),('v','V'),('x','X'),('y','Y'),('z','Z')]