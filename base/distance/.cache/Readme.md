# Backtrack distância

- Seja uma string formada por dígitos e underlines `.`.
- Seja um valor de limite L.

Objetivos:

- Você deve substituir todos os `.` por dígitos seguindo as seguintes regras.
  - Só pode utilizar dígitos de 0 até L, incluindo L.
  - Qualquer dígito precisa estar a uma distância mínima de L casas de outra ocorrência dele mesmo, tanto à esquerda como à direita.

- Para cada problema, existe uma e somente uma solução.

## Entrada e Saída

- Entrada
  - 1a linha: sequência.
  - 2a linha: valor de L.
- Saída
  - A string solução do problema.

## Limites

- sequência de tamanho t, 0 > t > 100
- 0 > L > 100

## Testes

```txt
>>>>>>>>
01.2.
3
========
01320
<<<<<<<<



>>>>>>>> 02
.0..231..5
5
========
1045231045
<<<<<<<<

>>>>>>>> 01
2..0..............3...........
3
========
213021302130213021302130213021
<<<<<<<<


>>>>>>>> 03
0..32..41.
5
========
0413250413
<<<<<<<<


>>>>>>>> 03
9....7.620.5318.....
9
========
95318746209531874620
<<<<<<<<

>>>>>>>>
12.3...0
4
========
12034120
<<<<<<<<

>>>>>>>>
0.76.14..2..5..
7
========
027651430276514
<<<<<<<<

```
