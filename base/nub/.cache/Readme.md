# Data.List.nub

```hs
--IN : Lista u com possíveis chaves repetidas
--OUT: Lista com as chaves de u sem repetições na ordem que a primeira ocorrência aparece
mynub [1,1,1] == [1]
mynub [2,1,2,1,1,1,1,2] == [2,1]
mynub [2,1,2,1,1,1,1,2,3] == [2,1,3]
mynub [1,2,5,2,5,7,2,5] == [1,2,5,7]
```

## Testes

```txt
>>>>>>>>
[1,1,1]
========
[1]
<<<<<<<<

>>>>>>>>
[2,1,2,1,1,1,1,2]
========
[2,1]
<<<<<<<<

>>>>>>>>
[2,1,2,1,1,1,1,2,3]
========
[2,1,3]
<<<<<<<<

>>>>>>>>
[1,2,5,2,5,7,2,5]
========
[1,2,5,7]
<<<<<<<<

```
