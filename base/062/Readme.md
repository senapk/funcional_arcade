## triangle - triângulo aritmético
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

A função `triangle n` o triângulo até a linha `n`:


```hs
triangle 0 == []
triangle 1 == [[1]]
triangle 2 == [[1],[2,3]]
triangle 3 == [[1],[2,3],[4,5,6]]
triangle 4 == [[1],[2,3],[4,5,6],[7,8,9,10]]
triangle 5 == [[1],[2,3],[4,5,6],[7,8,9,10],[11,12,13,14,15]]
```

## Ajuda
Utilize a função `line` criada no problema `@61`.

<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    print $ triangle a

```
<!--MAIN_END-->
