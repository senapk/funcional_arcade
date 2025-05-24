# Mudar para maiúsculo

```hs
--IN : Uma string S
--OUT: Versão em caixa alta da string S
upper "abc" == "ABC"
upper "a Casa Caiu" == "A CASA CAIU"
upper "tenho 45 ABCs" == "TENHO 45 ABCS"
```

## Ajuda

Você pode usar a função `zip` para criar uma lista de tuplas `zip ['a'..'z'] ['A'..'Z']`

## Testes

```txt
>>>>>>>>
abc
========
"ABC"
<<<<<<<<

>>>>>>>>
a Casa Caiu
========
"A CASA CAIU"
<<<<<<<<

>>>>>>>>
tenho 45 ABCs
========
"TENHO 45 ABCS"
<<<<<<<<

```
