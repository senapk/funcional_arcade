# Mudar para minúsculo

```hs
--IN : Uma string S
--OUT: Versão em caixa baixa da string S
upper "abc" == "abc"
upper "a Casa Caiu" == "a casa caiu"
upper "tenho 45 ABCs" == "tenho 45 abcs"
upper "EXEMPLO" == "exemplo" 
```

## Ajuda

Você pode usar a função `zip` para criar uma lista de tuplas `zip ['a'..'z'] ['A'..'Z']`

## Testes

```txt
>>>>>>>>
abc
========
abc
<<<<<<<<

>>>>>>>>
a Casa Caiu
========
a casa caiu
<<<<<<<<

>>>>>>>>
tenho 45 ABCs
========
tenho 45 abcs
<<<<<<<<

```
