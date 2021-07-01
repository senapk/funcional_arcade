

lista = [1, 3, 6, 2, 7, 8]

rest = map(lambda x: len([y for y in lista if y < x]), lista)

int tam = 4;
[value for value, ocurr in zip (lista, rest) if ocurr < tam]
