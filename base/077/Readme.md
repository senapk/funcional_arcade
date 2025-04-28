# vigenere

[Link](https://pt.wikipedia.org/wiki/Cifra_de_Vigen%C3%A8re)

Dado uma string e uma palavra chave, retorne o texto cifrado. 

- A chave é repetida até até terminar a cifra
- Deve-se ignorar espaços em branco para gerar o texto claro
- A cifra é feita com uma soma módulo 26


Tente utilizar as funções zip, Data.List.lookup, Data.List.elemIndex e as funções do Data.Maybe. Evite recursão.

## Exemplo

```txt
Texto:         ATACARBASESUL
Chave:         LIMAOLIMAOLIM
Texto cifrado: LBMCOCJMSSDCX
```

```hs
vigenere "ATACARBASESUL" "LIMAO" == "LBMCOCJMSSDCX"
vigenere "ABACATE" "A" == "ABACATE" 
vigenere "ABACATE" "B" == "BCBDBUF" 
vigenere "ABACATE" "AB" == "ACADAUE" 
```

## Testes

```txt
>>>>>>>>
ATACARBASESUL
LIMAO
========
"LBMCOCJMSSDCX"
<<<<<<<<

>>>>>>>>
ABACATE
A
========
"ABACATE"
<<<<<<<<

>>>>>>>>
ABACATE
B
========
"BCBDBUF"
<<<<<<<<

>>>>>>>>
ABACATE
AB
========
"ACADAUE"
<<<<<<<<

```
