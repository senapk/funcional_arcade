## rev - inverter inteiro
[](solver.hs)
```hs
--IN : Um inteiro positivo x
--OUT: Um inteiro positivo equivalente a x, mas com os dígitos na ordem inversa
rev 1923 == 3291
rev 123 == 321
rev 39402 == 20493
rev 5 == 5
```

## Ajuda
Algoritmo interativo em python

```
n = int(input())
y = 0
while n > 0:
    y = y * 10 + n % 10
    n = int(n / 10)
print(y)
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    print $ rev a

```
<!--MAIN_END-->
