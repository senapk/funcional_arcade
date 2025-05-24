# Lista acumulativa

- Entrada: lista u de inteiros
- Saída: ersão v acumulativa de u. Na versão acumulativa a k-ésima chave, vk é determinada somando-se as todas as chaves de u até a posição k.

```hs
listacc [] == []
listacc [1] == [1]
listacc [1,3,4] == [1,4,8]
listacc [4,3,1,1] == [4,7,8,9]
listacc [1,2,3,4] == [1,3,6,10]
```

## Testes

```txt
>>>>>>>>
[]
========
[]
<<<<<<<<

>>>>>>>>
[1]
========
[1]
<<<<<<<<

>>>>>>>>
[1,3,4]
========
[1,4,8]
<<<<<<<<

>>>>>>>>
[4,3,1,1]
========
[4,7,8,9]
<<<<<<<<

>>>>>>>>
[1,2,3,4]
========
[1,3,6,10]
<<<<<<<<

```
