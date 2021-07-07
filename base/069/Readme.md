## @ elemIndex - Data.List
[](solver.hs)

Implemente a função myelemIndex do Data.List retornando Nothing ou Just posição.

```hs
myelemIndex 4 [1,2,6,4,3] == Just 3
myelemIndex 5 [1,2,6,4,3] == Nothing
myelemIndex 4 [] == Nothing
myelemIndex 1 [1,2,6,4,3] == Just 0
```

## Guia

<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ myelemIndex a b
```
<!--MAIN_END-->




