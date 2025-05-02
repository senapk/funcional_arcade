# Comparando pesos

Joãozinho acaba de mudar de escola e a primeira coisa que percebeu na nova escola é que a gangorra do parquinho não é simétrica, uma das extremidades é mais longa que a outra. Após brincar algumas vezes com um amigo de mesmo peso, ele percebeu que quando está em uma extremidade, a gangorra se desequilibra para o lado dele (ou seja, ele fica na parte de baixo, e o amigo na parte de cima), mas quando eles trocam de lado, a gangorra se desequilibra para o lado do amigo.

Sem entender a situação, Joãozinho pediu ajuda a outro amigo de outra série, que explicou que o comprimento do lado interfere no equilíbrio da gangorra, pois a gangorra estará equilibrada quando

```hs
P_1 x C_1 for igual a P_2 x C_2
```

onde P_1 e P_2 são os pesos da criança no lado esquerdo e direito, respectivamente, e C_1 e C_2 são os comprimentos da gangorra do lado esquerdo e direito, respectivamente.

Escreva uma função gangorra que recebe quatro inteiros P_1, C_1, P_2 e C_2, que são respectivamente, o peso da criança e o comprimento da gangorra do lado esquerdo e o o peso da criança e o comprimento da gangorra do lado direito.Se a gangorra estiver equilibrada, a função gangorra devolve 0. Se ela estiver desequilibrada de modo que a criança esquerda esteja na parte de baixo, a função gangorra devolve -1, senão, devolve 1.

Por exemplo,

```hs
gangorra 30 100 60 50 == 0
gangorra 40 40 38 60 == 1
gangorra 35 80 35 75 == -1
gangorra 45 23 96 12 == 1
gangorra 74 12 65 48 == 1
gangorra 78 45 12 23 == -1
```

## Testes

```txt
>>>>>>>>
30
100
60
50
========
0
<<<<<<<<

>>>>>>>>
40
40
38
60
========
1
<<<<<<<<

>>>>>>>>
35
80
35
75
========
-1
<<<<<<<<

>>>>>>>>
45
23
96
12
========
1
<<<<<<<<

>>>>>>>>
74
12
65
48
========
1
<<<<<<<<

>>>>>>>>
78
45
12
23
========
-1
<<<<<<<<

```
