## 18. reverso
[](solver.hs)
Implemente a função reverse com recursão
```hs
--IN : Lista u
--OUT: Lista das chaves de u na ordem inversa
reverso [] == []
reverso [7] == [7]
reverso [2,3] == [3,2]
reverso [1,2,3,4] == [4,3,2,1]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ reverso a

```
<!--MAIN_END-->
