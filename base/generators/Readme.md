# Geradores

Faça três geradores de lista das seguintes formas:

- a. apenas com recursão
- b. utilizando list comprehension (opcional)
- c. utilizando unfoldr
- d. utilizando iterate

Sequências:

- gerador1: Alterna positivos e negativos de forma crescente = [0, 1, -1, 2, -2, 3, -3, ...]
- gerador2: Números naturais com sinais alternados = [1, -2, 3, -4, 5, -6, ...]
- gerador3: Potências de 2 = [1, 2, 4, 8, 16, 32, ...]
- gerador4 n: Começa de n e divide por 2 até chegar a 1, usando divisão inteira = gerador4 500 = [500, 250, 125, 62, 31, 15, 7, 3, 1]

## Testes

```txt
>>> gerador1
[0,1,-1,2,-2,3,-3,4,-4,5]
```

```txt
>>> gerador2
[1,-2,3,-4,5,-6,7,-8,9,-10]
```

```txt
>>> gerador3
[1,2,4,8,16,32,64,128,256,512]
```

```txt
>>> gerador4 1000
[1000,500,250,125,62,31,15,7,3,1]
```

```txt
>>> gerador4 8268216
[8268216,4134108,2067054,1033527,516763,258381,129190,64595,32297,16148,8074,4037,2018,1009,504,252,126,63,31,15,7,3,1]
```
