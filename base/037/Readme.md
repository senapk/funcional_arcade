## 27. `rotEsq`
```hs
--IN : Um natural n e uma lista ou string S
--OUT: Lista S rotacionada n vezes à esquerda
rotEsq 0 "asdfg"  == "asdfg"
rotEsq 1 "asdfg"  == "sdfga"
rotEsq 3 "asdfg" == "fgasd"
rotEsq 4 "asdfg" == "gasdf"
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotEsq a b

```
<!--MAIN_END-->
