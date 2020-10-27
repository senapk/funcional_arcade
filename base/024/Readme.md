## unique - Data.List.nub
[](solver.hs)
```hs
--IN : Lista u com possíveis chaves repetidas
--OUT: Lista com as chaves de u sem repetições na ordem que a primeira ocorrência aparece
unique [1,1,1] == [1]
unique [2,1,2,1,1,1,1,2] == [2,1]
unique [2,1,2,1,1,1,1,2,3] == [2,1,3]
unique [1,2,5,2,5,7,2,5] == [1,2,5,7]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ unique a

```
<!--MAIN_END-->
