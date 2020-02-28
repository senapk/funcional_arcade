## ©basic g. Pedaço do Rabo

Defina a função final tal que `final xs` é uma lista formada pelos n elementos finais de xs.

```hs
final 3 [2,5,4,7,9,6] == [7,9,6]
final 2 [2,5,4,7,9,6] == [9,6]
final 1 [2,5,4,7,9,6] == [6]
```

## Main

```hs
main = do
    qtd <- readLn :: IO Int
    line <- getLine
    print $ final qtd [read x :: Int | x <- words line]
```

## IO
```
>>>>>>>> 00
0
2 2
========
[]
<<<<<<<<

>>>>>>>> 01
2
2 3
========
[2,3]
<<<<<<<<

>>>>>>>> 02
3
2 4 5 6 7 8
========
[6,7,8]
<<<<<<<<

>>>>>>>> 03
3
4 5 6 2 7 8
========
[2,7,8]
<<<<<<<<

>>>>>>>> 04
1
1 2 3 5 6
========
[6]
<<<<<<<<

>>>>>>>> 05
3
3 6 4 7 9 2
========
[7,9,2]
<<<<<<<<
```
