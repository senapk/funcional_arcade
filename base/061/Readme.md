## line - linhas de um triângulo aritmético
[](solver.hs)

Um triângulo aritmético é construído da seguinte forma:

```
 1
 2  3
 4  5  6
 7  8  9 10
11 12 13 14 15
16 17 18 19 20 21
```

A função `line n` retorna os elementos da linha `n`:


```hs
line 0 == []
line 1 == [1]
line 2 == [2,3]
line 3 == [4,5,6]
line 4 == [7,8,9,10]
line 5 == [11,12,13,14,15]
line 6 == [16,17,18,19,20,21]
```

## Ajuda
Observe que o elemento que inicia a linha `n` é a soma dos valores de (`1..n`) + 1.

Ex: `line 5` inicia com `11 == 1 + 2 + 3 + 4` + `1`

<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    print $ line a

```
<!--MAIN_END-->
