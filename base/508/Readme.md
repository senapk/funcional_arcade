## Estruturas de dados recursivas
[](solver.hs)

Escreva a função replicate do prelude utilizando recursão.


```hs
main = do
    print $ myreplicate 4 0 == [0, 0, 0, 0]
    print $ myreplicate 2 True == [True, True]
    print $ myreplicate 3 "banana" == ["banana", "banana", "banana"]
```
