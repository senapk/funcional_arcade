# Contar repetições

- IN : Lista de números u
- OUT: Lista de listas. Cada lista-componente possui um ou dois elementos. Quando possui dois, representa uma sequência de chaves repetidas de u, sendo o primeiro valor a chave que se repete e o segundo o total de repetições. Quando possui um elemento contém uma chave de u que não se repete.

```hs
compac [] == []
compac [1,1,1] == [[1,3]]
compac [1,2,3] == [[1],[2],[3]]
compac [2,2,2,3,4,4,2,9,5,2,4,5,5,5] == [[2,3],[3],[4,2],[2],[9],[5],[2],[4],[5,3]]
```

## Testes

```txt
>>>>>>>>
[]
========
[]
<<<<<<<<

>>>>>>>>
[1,1,1]
========
[[1,3]]
<<<<<<<<

>>>>>>>>
[1,2,3]
========
[[1],[2],[3]]
<<<<<<<<

>>>>>>>>
[2,2,2,3,4,4,2,9,5,2,4,5,5,5]
========
[[2,3],[3],[4,2],[2],[9],[5],[2],[4],[5,3]]
<<<<<<<<

```
