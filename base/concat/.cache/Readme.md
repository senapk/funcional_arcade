# Juntar duas listas

```hs
--IN : Duas listas a e b
--OUT: Concatenação entre a e b
concatena [] [] == []
concatena [] [3,4] == [3,4]
concatena [1,2] [] == [1,2]
concatena [1,2] [3,4] == [1,2,3,4]
concatena [1,2,3] [3,4] == [1,2,3,3,4]
```

OBS: não pode usar o operador de `++`, apenas o `:`

## Testes

```txt
>>>>>>>>
[]
[]
========
[]
<<<<<<<<

>>>>>>>>
[]
[3,4]
========
[3,4]
<<<<<<<<

>>>>>>>>
[1,2]
[]
========
[1,2]
<<<<<<<<

>>>>>>>>
[1,2]
[3,4]
========
[1,2,3,4]
<<<<<<<<

>>>>>>>>
[1,2,3]
[3,4]
========
[1,2,3,3,4]
<<<<<<<<

```
