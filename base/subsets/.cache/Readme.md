# Montando subconjuntos

- IN : Lista u
- OUT: Conjunto das partes de u (O conjunto das partes de um conjunto C é o conjunto de todos os subconjuntos distintos e possíveis de C)

```hs
partes [1,2] == [[],[1],[2],[1,2]]
partes [1,2,3] == [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]
partes [1,4,3] == [[],[1],[4],[1,4],[3],[1,3],[4,3],[1,4,3]]
partes [2,3,2,9] == [[],[2],[3],[2,3],[2],[2,2],[3,2],[2,3,2],[9],[2,9],[3,9],[2,3,9],[2,9],[2,2,9],[3,2,9],[2,3,2,9]]
```

## Ajuda

Para formar os subconjuntos, use a seguinte regra

```txt
Subconjuntos de um conjunto vazio é um conjunto vazio
Subconjuntos de um elemento: resto é:
    (subconjuntos do resto) ++ (elemento interagindo com subconjuntos do resto)

Depois faça algumas operações de reverse para saída ficar bonita que nem a do exemplo. 
```

## Testes

```txt
>>>>>>>>
[1,2]
========
[[],[1],[2],[1,2]]
<<<<<<<<

>>>>>>>>
[1,2,3]
========
[[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]
<<<<<<<<

>>>>>>>>
[1,4,3]
========
[[],[1],[4],[1,4],[3],[1,3],[4,3],[1,4,3]]
<<<<<<<<

>>>>>>>>
[2,3,2,9]
========
[[],[2],[3],[2,3],[2],[2,2],[3,2],[2,3,2],[9],[2,9],[3,9],[2,3,9],[2,9],[2,2,9],[3,2,9],[2,3,2,9]]
<<<<<<<<

```
