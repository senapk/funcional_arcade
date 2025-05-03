# Data.List.elemIndex

Implemente a função myelemIndex do Data.List retornando Nothing ou Just posição.

```hs
myelemIndex 4 [1,2,6,4,3] == Just 3
myelemIndex 5 [1,2,6,4,3] == Nothing
myelemIndex 4 [] == Nothing
myelemIndex 1 [1,2,6,4,3] == Just 0
```

## Testes

```txt
>>>>>>>>
4
[1,2,6,4,3]
========
Just 3
<<<<<<<<

>>>>>>>>
5
[1,2,6,4,3]
========
Nothing
<<<<<<<<

>>>>>>>>
4
[]
========
Nothing
<<<<<<<<

>>>>>>>>
1
[1,2,6,4,3]
========
Just 0
<<<<<<<<

```
