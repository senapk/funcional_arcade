# Mudança de base

```hs
--IN : Dois inteiros positivos, n e b (1<b<37)
--OUT: Representação na base b do inteiro n
base 25 10 == "25"
base 17 2 == "10001"
base 26 16 == "1A"
base 26012 36 == "K2K"
```

## Ajuda

Código interativo em python

```py
def converte(number, base):
    text = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    output = ""
    while number != 0:
        resto = number % base
        number = int(number / base)
        output = text[resto] + output
    return output
```

## Testes

```txt
>>>>>>>>
25
10
========
"25"
<<<<<<<<

>>>>>>>>
17
2
========
"10001"
<<<<<<<<

>>>>>>>>
26
16
========
"1A"
<<<<<<<<

>>>>>>>>
26012
36
========
"K2K"
<<<<<<<<

```
