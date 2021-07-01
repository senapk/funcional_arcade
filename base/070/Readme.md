## remover o maior elemento
[](solver.hs)
```hs
--IN : Uma lista u
--OUT: A lista sem o maior elemento
removerMaior [1] == [] 
removerMaior [1,3] == [1] 
removerMaior [1,3,5] == [1,3] 
removerMaior [1,3,5,2] == [1,3,2] 
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ removerMaior a

```
<!--MAIN_END-->
