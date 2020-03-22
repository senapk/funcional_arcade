## 26. `qsort`
```hs
--IN : Lista u de objetos ordenáveis
--OUT: Lista ordenada das chaves de u pelo método de ordenação rápida
qsort [7,3,5,7,8,4] == [3,4,5,7,7,8]
qsort [7,3,5,7,8,4,4] == [3,4,4,5,7,7,8]
qsort [7,3,5,7,8,4,5] == [3,4,5,5,7,7,8]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ qsort a

```
<!--MAIN_END-->
