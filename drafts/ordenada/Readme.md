## Verifique se a lista está ordenada

Leia uma lista e verifique se está ordenada


```hs
ordenada [] == True
ordenada [1,1] == True
ordenada [1,1,2] == True
ordenada [1,2,3,4,5] == True
ordenada [1,2,3,4,5,4] == False
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ ordenada a

```
<!--MAIN_END-->