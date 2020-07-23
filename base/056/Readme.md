## 06. allPerms
```hs
--IN : : Lista u de chaves não repetidas
--OUT: Todas as permutações possíveis de u em ordem lexicográfica
allPerms [] == []
allPerms [1] == [[1]]
allPerms [3,1,5,4] == [[3,1,5,4],[3,4,1,5],[5,3,1,4],[5,3,4,1],[5,4,1,3],[5,4,3,1]]
allPerms [2,1,3,7] == [[2,1,3,7],[2,1,7,3],[2,3,1,7],[7,2,1,3],[7,2,3,1],[7,3,1,2],[7,3,2,1]]
allPerms [1,2,3] == [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ allPerms a

```
<!--MAIN_END-->
