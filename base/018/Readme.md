## #lista frequencia
```hs
--IN : Lista u e valor x
--OUT: O total de ocorrências de x em u
frequencia 1 [] == 0
frequencia 4 [4] == 1
frequencia 4 [5] == 0
frequencia 4 [4,4] == 2
frequencia 2 [4,4] == 0
frequencia 5 [4,5,2,1,5,5,9] == 3
```

## Guia
- Você pode utilizar a função length
- Faça utilizando filter
    - filtre quem for igual ao valor
- Faça utilizando compreensão de lista
    - filtre quem for igual ao valor
- Faça utilizando recursão
    - se y for igual a head some 1 se não, 0
- Faça utilizando fold
    - utilize a lógica da recursão


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ frequencia a b

```
<!--MAIN_END-->















