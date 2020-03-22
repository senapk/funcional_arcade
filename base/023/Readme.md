## 14. `corpo`
```hs
--IN : Uma lista u
--OUT: Corpo de u
corpo [1] == []
corpo [1,2] == [1]
corpo [1,2,3,4] == [1,2,3]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ corpo a

```
<!--MAIN_END-->
