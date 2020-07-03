## 24. inserir
```hs
--IN : Número x e lista u de números ordenados ascendentemente
--OUT: Lista de números ordenados ascendentemente oriunda da inserção apropriada de x em u
inserir 3 [2,7,12] == [2,3,7,12]
inserir 1 [2,7,12] == [1,2,7,12]
inserir 10 [2,7,12] == [2,7,10,12]
inserir 15 [2,7,12] == [2,7,12,15]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ inserir a b

```
<!--MAIN_END-->
