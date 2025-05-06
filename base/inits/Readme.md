# Possíveis inícios


Escreva uma função que retorne os prefixos iniciais de uma lista, incluindo a lista vazia e a lista completa.
```hs
inits [1] == [[],[1]] 
inits [1,3] == [[],[1],[1,3]] 
inits [1,3,5] == [[],[1],[1,3],[1,3,5]] 
inits [1,3,5,2] == [[],[1],[1,3],[1,3,5],[1,3,5,2]] 

```

Não use a função pronta `inits`

## Testes

```txt
>>>>>>>>
[1]
========
[[],[1]]
<<<<<<<<

>>>>>>>>
[1,3]
========
[[],[1],[1,3]]
<<<<<<<<

>>>>>>>>
[1,3,5]
========
[[],[1],[1,3],[1,3,5]]
<<<<<<<<

>>>>>>>>
[1,3,5,2]
========
[[],[1],[1,3],[1,3,5],[1,3,5,2]]
<<<<<<<<

```
