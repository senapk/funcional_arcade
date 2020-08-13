## sdig - soma dos dígitos
[](solver.hs)
```hs
--IN : Natural n
--OUT: Soma dos dígitos de n
sdig 4132 == 10
sdig 328464584658 == 63
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    print $ sdig a

```
<!--MAIN_END-->
