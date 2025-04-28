# concatMap - Data.List.concatMap

A função `concatMap fn xs` equivale a aplicar a função `fn` a cada elemento da lista `xs` e então concatenar os valores.
Utilize a operação de `fold` e `map` para implementar `concatMap`.

```hs
--IN : Uma lista u, uma função fn
--OUT: Uma lista com a concatenação da aplicação da função map
concatMap:: (a -> [b]) -> [a] -> [b]
```

## Testes

```txt
>>>>>>>>
========
[1,1,2,2,3,3,4,4]
[1,1,2,3,1,2,3,4,5]
[(1.0,3.0,0.5),(3.0,5.0,1.5),(5.0,7.0,2.5)]
<<<<<<<<

```
