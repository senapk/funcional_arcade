## primeiros
[](solver.hs)
```hs
--IN : Uma lista u
--OUT: Lista menos o último elemento
primeiros [1] == []
primeiros [1,2] == [1]
primeiros [1,2,3,4] == [1,2,3]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ primeiros a

```
<!--MAIN_END-->
