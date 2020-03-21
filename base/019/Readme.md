## 10. #lista #rec unico
```hs
--IN : Lista u e valor x
--OUT: True se x ocorre exatamente uma vez em u e false do contrário

unico 2 [2] == True
unico 2 [3,1] == False
unico 2 [1,2,3,2] == False
```

## Guia
- Faça utilizando filter
    - Você pode utilizar a função `length`
    - filtre quem for igual ao valor e veja se aparece uma só vez
- Faça utilizando recursão
    - se y for igual a head return True

<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ unico a b

```
<!--MAIN_END-->
