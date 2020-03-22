## 40. partes
- IN : Lista u
- OUT: Conjunto das partes de u (O conjunto das partes de um conjunto C é o conjunto de todos os subconjuntos distintos e possíveis de C)
```hs
partes [1,2] == [[],[1],[2],[1,2],[2,1]]
partes [1,4,3] == [[],[1],[4],[3],[1,1],[1,4][1,3],[4,1],]
partes [2,3,2,9] == [[],[2],[3],[9],[2,2],[2,3],[2,9],[3,9],[2,2,3],[2,2,9],[2,3,9],[2,2,3,9]]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ partes a

```
<!--MAIN_END-->
