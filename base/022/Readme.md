# tails - Data.List.tails

```hs
--IN : Uma lista u
--OUT: Retorna a lista dos segmentos iniciais, os mais curtos no fim
mytails [1] == [[1],[]]
mytails [1,3,5] == [[1,3,5],[3,5],[5],[]] 
mytails [5,3,4] == [[5,3,4],[3,4],[4],[]]
```

## Testes

```txt
>>>>>>>>
[1]
========
[[1],[]]
<<<<<<<<

>>>>>>>>
[1,3,5]
========
[[1,3,5],[3,5],[5],[]]
<<<<<<<<

>>>>>>>>
[5,3,4]
========
[[5,3,4],[3,4],[4],[]]
<<<<<<<<

```
