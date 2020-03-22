## 16 `menores`
```hs
--IN : Natural n e lista u
--OUT: Lista com os n menores elementos de u na ordem que aparecem em u
--OBS: Não use filter nem list compreension, use recursão
menores 5 [6,1,2,3,4] == [6,1,2,3,4]
menores 4 [3,1,2] == [3,1,2]
menores 3 [5,3,1,9,7,2] == [3,1,2]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ menores a b

```
<!--MAIN_END-->
