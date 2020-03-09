## #basic L4 - Sublista

Defina a função sublist que obtém uma sublista passando início, fim e a lista. Se forem utilizados números negativos, interprete-os como sendo contando a partir do fim da lista. O índice final não entra na lista.

## Main

```hs
main = do
    begin <- readLn :: IO Int
    end   <- readLn :: IO Int
    line  <- getLine
    print $ sublist begin end [read x :: Int | x <- words line]
```

## IO
```
>>>>>>>> 00
1
4
0 1 2 3 4 5 6 7 8 9 10
========
[1,2,3]
<<<<<<<<

>>>>>>>> 00
0
11
0 1 2 3 4 5 6 7 8 9 10
========
[0,1,2,3,4,5,6,7,8,9,10]
<<<<<<<<

>>>>>>>> 00
2
8
0 1 2 3 4 5 6 7 8 9 10
========
[2,3,4,5,6,7]
<<<<<<<<

>>>>>>>> 00
0
-1
0 1 2 3 4 5 6 7 8 9 10
========
[0,1,2,3,4,5,6,7,8,9]
<<<<<<<<


>>>>>>>> 00
2
-2
0 1 2 3 4 5 6 7 8 9 10
========
[2,3,4,5,6,7,8]
<<<<<<<<

>>>>>>>> 00
-10
-1
0 1 2 3 4 5 6 7 8 9 10
========
[1,2,3,4,5,6,7,8,9]
<<<<<<<<

>>>>>>>> 00
-4
-2
0 1 2 3 4 5
========
[2,3]
<<<<<<<<
```
