# Gerar a próxima permutação

- Entrada: Lista u de elementos ordenáveis
- Saída: Próxima permutação lexicográfica de u ou lançar exceção se não for possível.
    - A próxima permutação lexicográfica de uma lista u de elementos ordenáveis é obtida aplicando-se o seguinte algoritmo:
        - (a) Obter o maior valor de índice i de u tal que u[i] < u[i + 1] (pode não existir! Neste caso deve-se disparar a exceção).
        - (b) Obter o maior índice j de u, com j > i, tal que u[j] > u[i].
        - (c) Trocar u[i] com u[j].
        - (d) Reverter em u a sub-lista que se estende da posição i + 1 até o final da lista.

```hs
nextPerm [] == []
nextPerm [1] == [1]
nextPerm [1,3,4] == [1,4,3]
nextPerm [4,1,3,2] == [4,2,1,3]
nextPerm [1,3,5,2] == [1,5,2,3]
```

## Ajuda

Seja o seguinte exemplo:

- `nextPerm [4,1,3,2] == [4,2,1,3]`
- `i` será no número `1`
- `j` será no número `2`, pois `2 > 1` e o índice do número `2` é maior que o índice do número `3`.
- Trocando o `2` e o `1` teremos: `[4,2,3,1]`
- Agora invertemos de `i + 1` até o fim da lista obtendo `[4,2,1,3]`

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
[1,4,3]
<<<<<<<<

>>>>>>>>
[4,1,3,2]
========
[4,2,1,3]
<<<<<<<<

>>>>>>>>
[1,3,5,2]
========
[1,5,2,3]
<<<<<<<<

```
