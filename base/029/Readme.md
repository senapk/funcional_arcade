## 20. `intercal`
```hs
--IN : Duas listas a e b
--OUT: Lista com os elementos de a e b intercalados
intercal [1,2,3] [7,8,9] == [1,7,2,8,3,9]
intercal [1,2,3,4] [8,9] == [1,8,2,9,3,4]
intercal [5] [1,2,6] == [5,1,2,6]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intercal a b

```
<!--MAIN_END-->
