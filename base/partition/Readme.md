# Partir por predicado

- IN : Lista de inteiros positivos, u
- OUT: Tupla de duas listas, (A,B), onde A e B são respectivamente compostos pelos números que passam no predicado e os que não passam

- Teste a função processando a lista recebida com duas funções (odd) e (<5).

```hs
splitints odd [1,2,3,4,5,6,7] == ([1,3,5,7],[2,4,6])
splitints (<5) [2,4,6,1,1,7] == ([2,4,1,1],[6,7])
```

## Testes

```txt
>>>>>>>>
[1,2,3,4,5,6,7]
========
odd ([1,3,5,7],[2,4,6])
(<5) ([1,2,3,4],[5,6,7])
<<<<<<<<

>>>>>>>>
[2,4,6,1,1,7]
========
odd ([1,1,7],[2,4,6])
(<5) ([2,4,1,1],[6,7])
<<<<<<<<

```
