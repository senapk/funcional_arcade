# Cortar uma lista em duas partes

```hs
--IN :Lista u e um natural n
--OUT: Tupla de duas listas, (A,B), onde A é formada pelas n primeiras chaves de u e B pelos elementos restantes}
divide [1,2,3,4] 0 == ([],[1,2,3,4])
divide [1,2,3,4] 1 == ([1],[2,3,4])
divide [1,2,3,4] 2 == ([1,2],[3,4])
divide [1,2,3,4] 3 == ([1,2,3],[4])
divide [1,2,3,4] 4 == ([1,2,3,4],[])
```

## Guia

- Essa função é equivalente a `splitAt` do Haskell.

## Testes

```txt
>>>>>>>>
[1,2,3,4]
0
========
([],[1,2,3,4])
<<<<<<<<

>>>>>>>>
[1,2,3,4]
1
========
([1],[2,3,4])
<<<<<<<<

>>>>>>>>
[1,2,3,4]
2
========
([1,2],[3,4])
<<<<<<<<

>>>>>>>>
[1,2,3,4]
3
========
([1,2,3],[4])
<<<<<<<<

>>>>>>>>
[1,2,3,4]
4
========
([1,2,3,4],[])
<<<<<<<<

```
