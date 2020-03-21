## #basic L2 - countNeg

Defina a função `countNeg xs` que computa o número de elementos negativos em uma lista xs.

```hs
netlist [] == 0
countNeg [1,2,3,4,5] == 0
countNeg [1,-1,2,-3,4] == 2
countNeg [2,-2] == 1
countNeg [1,-1] == 1
countNeg [1,-3,-4,3,4,-5] == 3
```

Guia: usa a função filter e length.


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ countNeg a

```
<!--MAIN_END-->
