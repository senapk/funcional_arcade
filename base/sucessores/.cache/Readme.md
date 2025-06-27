# Sucessores

Leia uma lista e verifique se ela é formada de sucessores.

```hs
sucessores [1,2,3,4,5] ==> True
sucessores [1,2,3,4,5,4] ==> False
```

## Testes

```txt
>>>>>>>>
[]
========
True
<<<<<<<<

>>>>>>>>
[1]
========
True
<<<<<<<<

>>>>>>>>
[1,2]
========
True
<<<<<<<<

>>>>>>>>
[1,1]
========
False
<<<<<<<<

>>>>>>>>
[2,1]
========
False
<<<<<<<<


>>>>>>>>
[1,2,3,4,3]
========
False
<<<<<<<<

>>>>>>>>
[1,2,3,2,4,5]
========
False
<<<<<<<<

>>>>>>>>
[-1,0,1,2,3]
========
True
<<<<<<<<

```
