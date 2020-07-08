## 02. `rev`
```hs
--IN : Um inteiro positivo x
--OUT: Um inteiro positivo equivalente a x, mas
com os dígitos na ordem inversa
rev 1923 == 3291
rev 123 == 321
rev 39402 == 20493
rev 5 == 5
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    print $ rev a

```
<!--MAIN_END-->
