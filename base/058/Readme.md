## 08. `factors`
```hs
--IN : Número n inteiro positivo
--OUT: Lista de tuplas (f, p) que representam os
--fatores primos de n onde f denota o fator propriamente dito e p seu respectivo expoente. (Todo número x, tal que x pertence aos N, pode ser reescrito como o
--produto de potências de bases primas e expoentes
--naturais. Por exemplo, o número 3361743 pode ser
--reescrito na forma,
--3361743 = 3**4 * 7**3 * 11**2
--Os números 3, 7 e 11 são denominados fatores primos de 3361743 e 4, 3 e 2 seus respectivas expoentes.)
factors 3361743 == [(3,4),(7,3),(11,2)]
factors 36 == [(2,2),(3,2)]
factors 78 == [(2,1),(3,1),(13,1)]
factors 60 == [(2,2),(3,1),(5,1)]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    print $ factors a

```
<!--MAIN_END-->
