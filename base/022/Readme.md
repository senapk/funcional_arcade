## 13. `calda`
```hs
--IN : Uma lista u
--OUT: Calda de u
calda [1] == []
calda [1,2,3,4] == [2,3,4]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ calda a

```
<!--MAIN_END-->
