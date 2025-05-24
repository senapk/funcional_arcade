# Busca posições do elemento

Cria a funcao `indices v xs` que retorna todas as posições de `xs` onde o valor `v` aparece:

```hs
indices 0 [1,0,0,0,1] == [1,2,3]
indices 5 [1,3,5,2,3,5,5] == [2,5,6]
indices 7 [1,3,5,2,3,5,5] == []
indices 3 [1,3,5,2,3,5,5] == [1,4]
```

## Ajuda

Utilize a função `zip xs [0..]` para criar um vetor de tuplas `(valor, posição)` e utilize a operação de `filter` ou `list comprehension`

## Testes

```txt
>>>>>>>>
0
[1,0,0,0,1]
========
[1,2,3]
<<<<<<<<

>>>>>>>>
5
[1,3,5,2,3,5,5]
========
[2,5,6]
<<<<<<<<

>>>>>>>>
7
[1,3,5,2,3,5,5]
========
[]
<<<<<<<<

>>>>>>>>
3
[1,3,5,2,3,5,5]
========
[1,4]
<<<<<<<<

```
