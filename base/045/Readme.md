## 35. bubble
```hs
--IN : Lista ordenável u
--OUT: Versão ordenada de u pelo método de ordenação em bolhas
bubble [] == []
bubble [1] == [1]
bubble [1,3,4] == [1,3,4]
bubble [4,3,1] == [1,3,4]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ bubble a

```
<!--MAIN_END-->
