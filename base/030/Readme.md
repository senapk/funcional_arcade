## 21. uniao
```hs
--IN : Duas listas a e b sem repetição de chaves
--OUT: Lista das chaves de a e b sem repetição

uniao [4,5] [1] == [4,5,1]
uniao [4,5] [4,2,5] == [4,5,2]
uniao [1,2,3] [2,4,6] == [1,2,3,4,6]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ uniao a b

```
<!--MAIN_END-->
