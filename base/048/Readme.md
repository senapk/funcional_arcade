## 38. quadperf
- IN : Número inteiro positivo, n
- OUT: Verdadeiro se n for um quadrado perfeito e falso do contrário (Um *quadrado perfeito* é um número inteiro cuja raiz quadrada é também um número inteiro). Não utilizar operadores ou funções que retornem números reais.
```hs
quadperf 12 == False
quadperf 16 == True
quadperf 25 == True
quadperf 5 == False
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    print $ quadperf a

```
<!--MAIN_END-->
