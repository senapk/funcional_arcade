# Pedra na lua

## Motivação

Vários competidores disputaram uma competição interessante.

- Eles tinham duas pedras para lançar.
- Chamemos de pedra A e pedra B.
- Eles tinham que arremessar ambas as pedras a pelo menos 10 metros de distância.
- Se alguma das pedras caíssem abaixo de 10 metros, ele estaria desclassificado.
- A pontuação obtida é dada pela distância absoluta entre as pedras. Se uma pedra caiu a 12 metros e outra a 15 metros, ele fez 3 pontos.
- Ganha o competidor que faz menos pontos.
- O primeiro competidor tem número índice 0.
- Se houver empate nos pontos, ganha o competidor que tem menor índice.

### Entrada

- O número N de competidores.
- Distância das pedras A e B de cada competidor.

### Saida

- Se ninguém ganhar o jogo, porque todos foram desclassificados, imprima "sem ganhador".

## Exemplos

```hs
main :: IO ()
main = do
    print $ processa ["8 11", "10 15"] == "1"
    print $ processa ["9 12", "11 13", "10 11"] == "2"
    print $ processa ["12 15", "16 14", "10 9"] == "1"
    print $ processa ["12 15", "20 23", "10 9", "35 35"] == "3"
    print $ processa ["10 8", "9 13"] == "sem ganhador"
    print $ processa ["8 9", "12 7"] == "sem ganhador"
    print $ processa ["10 9", "15 19"] == "1"
    print $ processa ["9 8", "9 12", "12 15", "18 19"] == "3"
```

## Testes

```txt
>>>>>>>>
2
8 11
10 9
========
sem ganhador
<<<<<<<<

>>>>>>>>
2
8 11
10 15
========
1
<<<<<<<<

>>>>>>>>
3
9 12
11 13
10 11
========
2
<<<<<<<<

>>>>>>>>
3
12 15
16 14
10 9
========
1
<<<<<<<<

>>>>>>>>
4
12 15
20 23
10 9
35 35
========
3
<<<<<<<<

```
