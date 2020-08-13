## ordenada
```hs
--IN : Lista de números u
--OUT: Verdadeiro se u é ordenada e falso do contrário
ordenada [1,2,3,5] == True
ordenada [1,0,2,5] == False
ordenada [1,2,3,2] == False
ordenada [1,2,2,2,5] == True
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ ordenada a

```
<!--MAIN_END-->
