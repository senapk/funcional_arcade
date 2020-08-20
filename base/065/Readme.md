## indices - busca posições do elemento
[](solver.hs)

Cria a funcao `indices v xs` que retorna todas as posições de `xs` onde o valor `v` aparece:


```hs
indices 0 [1,0,0,0,1] == [1,2,3]
indices 5 [1,3,5,2,3,5,5] == [2,5,6]
indices 7 [1,3,5,2,3,5,5] == []
indices 3 [1,3,5,2,3,5,5] == [1,4]
```

## Ajuda
Utilize a função `zip xs [0..]` para criar um vetor de tuplas `(valor, posição)` e utilize a operação de `filter` ou `list comprehension`

<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ indices a b

```
<!--MAIN_END-->
