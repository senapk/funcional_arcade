## 39. base
```hs
--IN : Dois inteiros positivos, n e b (1<b<37)
--OUT: Representação na base b do inteiro n
base 17 2 == "10001"
base 26 16 == "1A"
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ base a b

```
<!--MAIN_END-->
