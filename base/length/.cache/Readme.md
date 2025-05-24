# Calcular tamanho de uma lista

```hs
--IN : Lista u
--OUT: Total de elementos de u.
--OBS: Não use função length
total [] == 0
total [1] == 1
total [2,3] == 2
total [3,2,1] == 3
```

## Guia

- Caso 1
  - Use uma combinação da função sum e da operação de map transformando o vetor em um vetor de uns
- Caso 2 - recursão
  - Caso base da lista vazia retorne 0
  - Caso normal retorne 1 mais recursão para o resto da lista
- Caso 3 - foldr
  - Use uma operação de fold adicionando 1 para cada elemento

## Testes

```txt
>>>>>>>>
[]
========
0
<<<<<<<<

>>>>>>>>
[1]
========
1
<<<<<<<<

>>>>>>>>
[2,3]
========
2
<<<<<<<<

>>>>>>>>
[3,2,1]
========
3
<<<<<<<<

```
