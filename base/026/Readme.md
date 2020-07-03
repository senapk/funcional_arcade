## 17. alter
[](solver.hs)
```hs
--IN : Inteiro n
--OUT: Lista [1, −1, 2, −2, 3, −3, · · · , n, −n]

alter 1 == [1,-1]
alter 2 == [1,-1,2,-2]
alter 4 == [1,-1,2,-2,3,-3,4,-4]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    print $ alter a

```
<!--MAIN_END-->
