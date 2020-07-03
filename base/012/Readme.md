## 03. fatorial
[](solver.hs)
```hs
--IN : Um natural n
--OUT: O fatorial de n
fatorial 0 == 1
fatorial 1 == 1
fatorial 5 == 120
```

## Guia
Utilize a função product e o gerador de lista `[0..n]`

<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    print $ fatorial a

```
<!--MAIN_END-->
