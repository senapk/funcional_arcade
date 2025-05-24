# Rotação à direita

```hs
--IN : Um natural n e uma lista ou string S
--OUT: Lista S rotacionada n vezes à direita
rotDir 0 "asdfg" == "asdfg"
rotDir 1 "asdfg" == "gasdf"
rotDir 2 "asdfg" == "fgasd"
rotDir 3 "asdfg" == "dfgas"
rotDir 4 "asdfg" == "sdfga"
rotDir 5 "asdfg" == "asdfg"
```

## Testes

```txt
>>>>>>>>
0
asdfg
========
"asdfg"
<<<<<<<<

>>>>>>>>
1
asdfg
========
"gasdf"
<<<<<<<<

>>>>>>>>
2
asdfg
========
"fgasd"
<<<<<<<<

>>>>>>>>
3
asdfg
========
"dfgas"
<<<<<<<<

>>>>>>>>
4
asdfg
========
"sdfga"
<<<<<<<<

>>>>>>>>
5
asdfg
========
"asdfg"
<<<<<<<<

```
