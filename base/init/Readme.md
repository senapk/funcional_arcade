# Remover o último

```hs
--IN : Uma lista u
--OUT: Lista menos o último elemento
primeiros [1] == []
primeiros [1,2] == [1]
primeiros [1,2,3,4] == [1,2,3]
```

## Guia

- Resolva sem a função `init` do haskell.

## Testes

```txt
>>>>>>>>
[1]
========
[]
<<<<<<<<

>>>>>>>>
[1,2]
========
[1]
<<<<<<<<

>>>>>>>>
[1,2,3,4]
========
[1,2,3]
<<<<<<<<

```
