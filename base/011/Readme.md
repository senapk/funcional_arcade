## #sel min3
```hs
--IN : Três números, x, y e z
--OUT: Menor valor entre x, y e z
min3 1 2 3 == 1
min3 2 1 3 == 1
min3 3 4 2 == 2
min3 2 5 4 == 2
```

## Guia
- Utilize as guardas para verificar os 3 casos.

<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ min3 a b c

```
<!--MAIN_END-->
