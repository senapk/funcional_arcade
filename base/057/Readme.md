# buscabin - busca binária

```hs
--IN : Lista u de chaves ordenadas ascendentemente e valor x de mesmo tipo base de u
--OUT: Posição de u onde se encontra x ou -1 se x não estiver em u. A busca deve ser binária.
buscaBin [] 4 == -1
buscaBin [1] 3 == -1
buscaBin [1,3,4] 4 == 2
buscaBin [1,3,4] 3 == 1
buscaBin [1,3,5,6,8] 1 == 0
buscaBin [1,3,5,6,8] 3 == 1
buscaBin [1,3,5,6,8] 5 == 2
buscaBin [1,3,5,6,8] 6 == 3
buscaBin [1,3,5,6,8] 8 == 4

```

## Ajuda

Se não conhecer o algoritmo, pode pesquisar em [LINK](https://pt.wikipedia.org/wiki/Pesquisa_bin%C3%A1ria)

Versão recursiva em C:

```c
int PesquisaBinaria (int x, int v[], int e, int d)
{
 int meio = (e + d)/2;
 if (v[meio] == x)
    return meio;
 if (e >= d)
    return -1; // não encontrado
 else
     if (v[meio] < x)
        return PesquisaBinaria(x, v, meio+1,      d);
     else
        return PesquisaBinaria(x, v,      e, meio-1);
}
```

## Testes

```txt
>>>>>>>>
[]
4
========
-1
<<<<<<<<

>>>>>>>>
[1]
3
========
-1
<<<<<<<<

>>>>>>>>
[1,3,4]
4
========
2
<<<<<<<<

>>>>>>>>
[1,3,4]
3
========
1
<<<<<<<<

>>>>>>>>
[1,3,5,6,8]
1
========
0
<<<<<<<<

>>>>>>>>
[1,3,5,6,8]
3
========
1
<<<<<<<<

>>>>>>>>
[1,3,5,6,8]
5
========
2
<<<<<<<<

>>>>>>>>
[1,3,5,6,8]
6
========
3
<<<<<<<<

>>>>>>>>
[1,3,5,6,8]
8
========
4
<<<<<<<<

```
