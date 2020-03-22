## 29. `upper`
```hs
--IN : Uma string S
--OUT: Versão em caixa alta da string S
upper "abc" == "ABC"
upper "a Casa Caiu" == "A CASA CAIU"
upper "tenho 45 ABCs" == "TENHO 45 ABCS"`
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- getLine
    b <- readLn :: IO Int
    c <- getLine
    print $ upper a b c

```
<!--MAIN_END-->
