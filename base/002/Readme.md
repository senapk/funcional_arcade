## contarIguais - Contar quantos de 3 valores são iguais 
[](solver.hs)
Dado três valores a, b e c, escreva uma função iguais3 que retorne quantos dos três são iguais. A resposta pode ser 3 (todos iguais), 2 (dois iguais) ou 0 (todos diferentes)

```hs
iguais 2 2 2 == 3
iguais 2 2 3 == 2
iguais 2 3 2 == 2
iguais 2 1 1 == 2
iguais 3 2 1 == 0
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ iguais a b c

```
<!--MAIN_END-->
