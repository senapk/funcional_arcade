## ehPrimo
```hs
--IN : Um natural n
--OUT: Verdadeiro se n é primo e falso do contrário
ehPrimo 1 == True
ehPrimo 2 == True
ehPrimo 10 == False
ehPrimo 13 == True
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    print $ ehPrimo a

```
<!--MAIN_END-->
