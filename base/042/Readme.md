## 32. `isPalind`
```hs
--IN : Uma string qualquer S
--OUT: Verdadeiro se S é um palíndromo e falso do contrário
isPalind "ana"   == True
isPalind "123aa321" == True
isPalind "cachorro" == False
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- getLine
    print $ isPalind a

```
<!--MAIN_END-->
