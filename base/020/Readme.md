## 11. `maioresQue`
```hs
--IN : Número x e uma lista u
--OUT: Sublista de u cujos números sejam maiores que x
--OBS: Faça usando filter e CList
maioresQue 10 [] == []
maioresQue 10 [11,9,12] == [11,12]
maioresQue 10 [4,6,30,3,15,3,10,7] == [30,15]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ maioresQue a b

```
<!--MAIN_END-->
