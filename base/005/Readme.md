## #basic L2 - Contar negativos

Defina a função `neglist xs` que computa o número de elementos negativos em uma lista xs.

```hs
netlist [] == 0
neglist [1,2,3,4,5] == 0
neglist [1,-1,2,-3,4] == 2
neglist [2,-2] == 1
neglist [1,-1] == 1
neglist [1,-3,-4,3,4,-5] == 3
```

Dica: usa a função filter e length.


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ neglist a

```
<!--MAIN_END-->