## #basic L1 - Quantos iguais

Dado três valores a, b e c, escreva uma função iguais3 que retorne quantos dos três são iguais. A resposta pode ser 3 (todos iguais), 2 (dois iguais) ou 0 (todos diferentes)

## Main

```hs
main = do
    x <- readLn :: IO Int
    y <- readLn :: IO Int
    z <- readLn :: IO Int
    print $ iguais3 x y z
```

## IO

```
>>>>>>>> 00
2
2
2
========
3
<<<<<<<<

>>>>>>>> 01
2
2
3
========
2
<<<<<<<<

>>>>>>>> 02
3
2
2
========
2
<<<<<<<<

>>>>>>>> 03
2
5
2
========
2
<<<<<<<<

>>>>>>>> 04
2
5
3
========
0
<<<<<<<<
```
