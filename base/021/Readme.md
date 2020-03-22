## 12. `concat`
```hs
--IN : Duas listas a e b
--OUT: Concatenação entre a e b
concat [] [] == []
concat [] [3,4] == [3,4]
concat [1,2] [] == [1,2]
concat [1,2] [3,4] == [1,2,3,4]
concat [1,2,3] [3,4] == [1,2,3,3,4]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ concat a b

```
<!--MAIN_END-->
