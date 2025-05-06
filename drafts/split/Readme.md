# Separar dígitos

Escreva uma função depara que recebe um inteiro e retorna uma lista com os dígitos divididos.

1. Crie usando recursão
2. Crie utilizando unfoldr ou iterate

```hs
separa 0 == [0]
separa [123] == [1,2,3]
separa [51234] == [5,1,2,3,4]
```

## Testes

```txt
>>>>>>>>
0
========
[0]
<<<<<<<<

>>>>>>>>
123
========
[1,2,3]
<<<<<<<<

>>>>>>>>
549050
========
[5,4,9,0,5,0]
<<<<<<<<


```
