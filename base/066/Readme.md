## inits - Data.List.inits
[](solver.hs)
```hs
--IN : Uma lista u
--OUT: Retorna a lista dos segmentos finais, os menores primeiro
inits [1] == [[],[1]] 
inits [1,3] == [[],[1],[1,3]] 
inits [1,3,5] == [[],[1],[1,3],[1,3,5]] 
inits [1,3,5,2] == [[],[1],[1,3],[1,3,5],[1,3,5,2]] 

```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ inits a

```
<!--MAIN_END-->
