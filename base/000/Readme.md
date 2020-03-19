## #basic L1 - Soma 2

Escreva uma função soma que recebe dois parâmetros e devolve a soma dos dois parâmetros.

```hs
soma 2 6 == 8
soma -4 6 == 2
soma -1 -1 == -2
```

<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ soma a b

```
<!--MAIN_END-->