## ©basic d. Maior de 3


Defina a função `max3` tal que (max3 x y z) é o máximo entre x, y e z. Por exemplo,

```hs
max3 6 2 4 == 6
max3 6 7 4 == 7
max3 6 7 9 == 9
```

## Main
```hs
main = do
    x <- readLn :: IO Int
    y <- readLn :: IO Int
    z <- readLn :: IO Int
    print $ max3 x y z
```


## IO
```
>>>>>>>> 00
2
2
2
========
2
<<<<<<<<


>>>>>>>> 01
2
2
3
========
3
<<<<<<<<


>>>>>>>> 02
3
2
2
========
3
<<<<<<<<


>>>>>>>> 03
2
5
2
========
5
<<<<<<<<


>>>>>>>> 04
2
5
3
========
5
<<<<<<<<
```
