## factors - fatores de um número
[](solver.hs)
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

## Ajuda
Faça as funções para:
- verificar se um número é primo
- gerar todos os primos de 1 até n
- dado um número x, qual a potência de x em n: 
    - Exemplo: `maxPot 24 2 == 3` pois consigo dividir o 24 por 2 três vezes. 

<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    print $ factors a

```
<!--MAIN_END-->
