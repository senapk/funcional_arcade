# quadperf

- IN : Número inteiro positivo, n
- OUT: Verdadeiro se n for um quadrado perfeito e falso do contrário (Um *quadrado perfeito* é um número inteiro cuja raiz quadrada é também um número inteiro). Não utilizar operadores ou funções que retornem números reais.

```hs
quadperf 12 == False
quadperf 16 == True
quadperf 25 == True
quadperf 5 == False
```

## Ajuda

Vá aumentando `i`, enquanto `i * i` for ou igual a `n`.

## Testes

```txt
>>>>>>>>
12
========
False
<<<<<<<<

>>>>>>>>
16
========
True
<<<<<<<<

>>>>>>>>
25
========
True
<<<<<<<<

>>>>>>>>
5
========
False
<<<<<<<<

```
