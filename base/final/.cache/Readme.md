# Últimos elementos de uma lista

Defina a função final tal que `final xs` é uma lista formada pelos n elementos finais de xs.

```hs
final 0 [] = []
final 3 [2,5,4,7,9,6] == [7,9,6]
final 2 [2,5,4,7,9,6] == [9,6]
final 1 [2,5,4,7,9,6] == [6]
```

## Testes

```txt
>>>>>>>>
3
[2,5,4,7,9,6]
========
[7,9,6]
<<<<<<<<

>>>>>>>>
2
[2,5,4,7,9,6]
========
[9,6]
<<<<<<<<

>>>>>>>>
1
[2,5,4,7,9,6]
========
[6]
<<<<<<<<

```
