## menores
[](solver.hs)
```hs
--IN : Natural n e lista u
--OUT: Lista com os n menores elementos de u na ordem que aparecem em u
menores 0 [6,2,2,4,9] == []
menores 1 [6,2,2,4,9] == [2] 
menores 3 [5,5,5] == [5,5,5]
menores 2 [5,5,2,5] == [2,5]
menores 2 [6,2,2,4,9] == [2,2]
menores 2 [6,2,3,4,9] == [2,3]
menores 3 [6,2,3,4,9] == [2,3,4]
menores 4 [6,2,3,4,9] == [6,2,3,4]
menores 5 [6,2,3,4,9] == [6,2,3,4,9]
menores 4 [3,1,2] == [3,1,2]
menores 3 [5,3,1,9,7,2] == [3,1,2]
```

## Dica do Henricky
if a lista for maior que o tamanho desejado
    remova o maior elemento
    chame a recursão


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ menores a b

```
<!--MAIN_END-->
