## sdig - soma dos dígitos
[](solver.hs)
```hs
--IN : Natural n
--OUT: Soma dos dígitos de n
sdig 4132 == 10
sdig 328464584658 == 63
```

## Ajuda
```py
n = int(input())
cont = 0
while n > 0:
    cont += n % 10
    n = int(n / 10)
print(cont)
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    print $ sdig a

```
<!--MAIN_END-->
