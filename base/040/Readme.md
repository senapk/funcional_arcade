## titulo
[](solver.hs)
```hs
--IN : String S
--OUT: Versão de S contendo todos os caracteres em caixa baixa exceto
--     aqueles que, por serem iniciais de palavras devem aparecer em 
--     caixa alta
titulo "FuLaNo bElTrAnO silva" == "Fulano Beltrano Silva"
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- getLine
    print $ titulo a

```
<!--MAIN_END-->
