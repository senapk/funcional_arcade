## 23. `sequencia`
```hs
--IN : Dois números naturais n e m
--OUT: Lista [m, m+1, m+2, ..., m+n-1]
sequencia 0 2 == []
sequencia 1 2 == [2]
sequencia 3 5 == [5,6,7]
sequencia 4 4 == [4,5,6,7]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ sequencia a b

```
<!--MAIN_END-->
