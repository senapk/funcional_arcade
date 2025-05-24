# Acesso indexado

```hs
--IN : Lista xs e um natural n
--OUT: N-ésimo termo de xs, processe os números negativos para contar a partir do fim
elemento 2 [2,7,3,9] == 3
elemento 0 [2,7,3,9] == 2
elemento -1 [2,7,3,9] == 9
elemento -2 [2,7,3,9] == 3
```

## Guia

- Adapte o valor negativo utilizando `let` ou `where`.
- Se o valor for negativo, some ele mais o tamanho do vetor para obter o valor positivo correto.
- Utilize o operador de índice `!!`.
- Tente refazer também utilizando recursão.
  - após consertar o índice se for negativo, invoque uma função recursiva
  - passe o vetor e o índice, se o índice for 0, retorne o head
  - se não, chame a recursão para o rabo passando índice -1

## Testes

```txt
>>>>>>>>
2
[2,7,3,9]
========
3
<<<<<<<<

>>>>>>>>
0
[2,7,3,9]
========
2
<<<<<<<<

>>>>>>>>
-1
[2,7,3,9]
========
9
<<<<<<<<

>>>>>>>>
-2
[2,7,3,9]
========
3
<<<<<<<<

```
