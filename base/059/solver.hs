listacc [] = []
listacc u = (listacc (init u))++[sum u]