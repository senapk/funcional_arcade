# Calculando paridade simples

```hs
--IN :  Lista u de valores booleanos
--OUT: Se o total de Trues é ímpar então retorne True e do contrário False
paridade [] == False
paridade [True,True,False] == False
paridade [True,False,True,False,True] == True
paridade [False,True,False] == True
```

## Testes

```txt
>>>>>>>>
[]
========
False
<<<<<<<<

>>>>>>>>
[True,True,False]
========
False
<<<<<<<<

>>>>>>>>
[True,False,True,False,True]
========
True
<<<<<<<<

>>>>>>>>
[False,True,False]
========
True
<<<<<<<<

```
