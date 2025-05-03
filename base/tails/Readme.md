# Todas as caudas

Escreva uma função

```hs
filtrandoCaudas :: [[Int]] -> [[Int]]
```

usando compreensão de listas tal que `caudas xss` devolve uma lista contendo a cauda das listas não vazias.

```hs
filtrandoCaudas [[2,3,5,6],[2,5,7,9],[4,5,6,7]] == [[3,5,6],[5,7,9],[5,6,7]]
filtrandoCaudas [[1,2,3],[],[1],[2,3,4]] == [[2,3],[],[3,4]]
filtrandoCaudas [[2,3,5,6],[2,5,7,9],[4,5,6,7]] == [[3,5,6],[5,7,9],[5,6,7]]
filtrandoCaudas [[4,5,6,7],[]] == [[5,6,7]]
```

Dica : use as funções head, tail, null.

## Testes

```txt
>>>>>>>>
[[2,3,5,6],[2,5,7,9],[4,5,6,7]]
========
[[3,5,6],[5,7,9],[5,6,7]]
<<<<<<<<

>>>>>>>>
[[1,2,3],[],[1],[2,3,4]]
========
[[2,3],[],[3,4]]
<<<<<<<<

>>>>>>>>
[[2,3,5,6],[2,5,7,9],[4,5,6,7]]
========
[[3,5,6],[5,7,9],[5,6,7]]
<<<<<<<<

>>>>>>>>
[[4,5,6,7],[]]
========
[[5,6,7]]
<<<<<<<<

```
