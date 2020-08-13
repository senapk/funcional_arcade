## min2
```hs
--IN : Dois números, x e y
--OUT: Menor valor entre x e y
min2 3 4 == 3
min2 4 1 == 1
min2 2 2 == 2
min2 4 -1 == -1
```

<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ min2 a b

```
<!--MAIN_END-->
