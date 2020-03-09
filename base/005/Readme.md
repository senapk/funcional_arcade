## #basic L2 - Contar negativos

Defina a função `neglist xs` que computa o número de elementos negativos em uma lista xs.

```hs
neglist [ 1 , 2 , 3 , 4 , 5 ] == 0
neglist [1 , −3 , −4 ,3 ,4 , −5] == 3
```

Dica: usa a função filter e length.

## Main

```hs
main = do
    line <- getLine
    print $ neglist [read x :: Int | x <- words line]
```

## IO


```
>>>>>>>> 00
1 -1 2 -3 4
========
2
<<<<<<<<

>>>>>>>> 01
-1 -2 -3 -4 -5
========
5
<<<<<<<<

>>>>>>>> 02
-1 2 3 -2 -4
========
3
<<<<<<<<

>>>>>>>> 03
-2 5 2 -3 -1
========
3
<<<<<<<<

>>>>>>>> 04
2 5 3
========
0
<<<<<<<<
```

