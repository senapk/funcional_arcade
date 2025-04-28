# produtoEscalar - utilizando a função zip

Crie a função produtoEscalar utilizando a função `zip` para percorrer os vetores elemento a elemento.

```ts
produtoEscalar [1,2,3] [4,5,6] 
(1 * 4) + (2 * 5) + (3 * 6) => 32
```


```hs
produtoEscalar [1] [1] == 1
produtoEscalar [1,2,3] [1,1,1] == 6
produtoEscalar [1,2,3] [4,5,6] == 32
produtoEscalar [1,2,3,7] [4,5,6,2] == 46
```

## Testes

```txt
>>>>>>>>
[1]
[1]
========
1
<<<<<<<<

>>>>>>>>
[1,2,3]
[1,1,1]
========
6
<<<<<<<<

>>>>>>>>
[1,2,3]
[4,5,6]
========
32
<<<<<<<<

>>>>>>>>
[1,2,3,7]
[4,5,6,2]
========
46
<<<<<<<<

```
