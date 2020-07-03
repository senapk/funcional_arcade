## 12. concatena
```hs
--IN : Duas listas a e b
--OUT: Concatenação entre a e b
concatena [] [] == []
concatena [] [3,4] == [3,4]
concatena [1,2] [] == [1,2]
concatena [1,2] [3,4] == [1,2,3,4]
concatena [1,2,3] [3,4] == [1,2,3,3,4]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ concatena a b

```
<!--MAIN_END-->
