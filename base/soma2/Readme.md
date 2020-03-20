## #basic L1 - soma2

Escreva uma função soma que recebe dois parâmetros e devolve a soma dos dois parâmetros.

```hs
soma2 2 6 == 8
soma2 -4 6 == 2
soma2 -1 -1 == -2
```

<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ soma2 a b

```
<!--MAIN_END-->
