# Remover o maior elemento

```hs
--IN : Uma lista u
--OUT: A lista sem o maior elemento
removerMaior [1] == [] 
removerMaior [1,3] == [1] 
removerMaior [1,3,5] == [1,3] 
removerMaior [1,3,5,2] == [1,3,2] 
```

## Testes

```txt
>>>>>>>>
[1]
========
[]
<<<<<<<<

>>>>>>>>
[1,3]
========
[1]
<<<<<<<<

>>>>>>>>
[1,3,5]
========
[1,3]
<<<<<<<<

>>>>>>>>
[1,3,5,2]
========
[1,3,2]
<<<<<<<<

```
