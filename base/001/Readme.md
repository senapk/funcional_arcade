## ©basic b. Miolo da lista


Defina a função interior tal que (interior xs) é uma lista obtida eliminando os extremos da lista xs. Por exemplo,

```hs
interior [2,5,3,7,3] == [5,3,7]
```

## Main
```hs
main = do
    line <- getLine
    print $ interior [read x :: Int | x <- words line]
```

## IO
```
>>>>>>>>
2 2 2 4
========
[2,2]
<<<<<<<<

>>>>>>>>
2 2 3 5 7 8
========
[2,3,5,7]
<<<<<<<<

>>>>>>>>
4 6 8 9 2
========
[6,8,9]
<<<<<<<<

>>>>>>>>
2 5 2
========
[5]
<<<<<<<<
```
