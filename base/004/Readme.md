## ©basic e. Some os ímpares

Defina uma função somaImpares tal que `somaImpares xs` devolve a soma dos elementos ímpares de uma lista.

```hs
somaImpares [2,3,1,5] == 9
somaImpares [1,1,4,2] == 2
```

## Opções
- Use as função odd, filter
- Use listas de compreensão

## Main

```hs
main = do
    line <- getLine
    print $ somaImpares [read x :: Int | x <- words line]
```

## IO

```
>>>>>>>> 00
3 2 4 6 5 7 8 0 1
========
16
<<<<<<<<


>>>>>>>> 01
2 3 1 5 2 2
========
9
<<<<<<<<

>>>>>>>> 02
1 1 1 1
========
4
<<<<<<<<

>>>>>>>> 03
5 5 5 5 1
========
21
<<<<<<<<

>>>>>>>> 04
7 3 3 7 2 2 6 8 4
========
20
<<<<<<<<
```
