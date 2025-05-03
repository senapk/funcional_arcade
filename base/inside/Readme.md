# Miolo da lista

Defina a função interior tal que (interior xs) é uma lista obtida eliminando os extremos da lista xs. Por exemplo

```hs
interior [1,2] == []
interior [1,3,2] == [3]
interior [2,5,3,7,3] == [5,3,7]
interior [2,2,2,4] == [2,2]
interior [1,2,3,5,7,8] == [2,3,5,7]
```

## Testes

```txt
>>>>>>>>
[1,2]
========
[]
<<<<<<<<

>>>>>>>>
[1,3,2]
========
[3]
<<<<<<<<

>>>>>>>>
[2,5,3,7,3]
========
[5,3,7]
<<<<<<<<

>>>>>>>>
[2,2,2,4]
========
[2,2]
<<<<<<<<

>>>>>>>>
[1,2,3,5,7,8]
========
[2,3,5,7]
<<<<<<<<

```
