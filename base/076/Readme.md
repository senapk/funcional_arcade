## Gere as seguintes funções
[](solver.hs)

Faça todos os exercícios abaixo SEM UTILIZAR RECURSÃO

```
- Faça da forma que preferir
>>> gerador1
[0,1,-1,2,-2,3,-3...]
```

- Faça da forma que preferir
```
>>> gerador2
[1,-2,3,-4,5,-6...]
```

- Faça com list comprehension
- Faça sem list comprehension
```
>>> gerador3
[1,2,4,8,16...]
```

- Faça divisão inteira por 2 enquanto for possível.
- Utilize o comando iterate e depois o takeWhile.
```
>>> gerador4 1000
[1000, 500, 250, 125, 62, 31, 15, 7, 3, 1]
```

- Faça divisão inteira por 2 enquanto for possível.
- Utilize o comando de `unfold`.
```
>>> gerador5 1000
[1000, 500, 250, 125, 62, 31, 15, 7, 3, 1]
```

- Extraia todos os dígitos de um número utilizando operador de divisão inteira e módulo com `unfold` ou `iterate`.

```
>>> digitos 1235412
[1,2,3,5,4,1,2]
```

## @065 factors - fatores de um número
```hs
factors 36 == [(2,2),(3,2)]
factors 50 == [(2,1),(5,2)]
factors 78 == [(2,1),(3,1),(13,1)]
factors 60 == [(2,2),(3,1),(5,1)]
factors 3361743 == [(3,4),(7,3),(11,2)]
```


## Cifra de Vigenere
[Link](https://pt.wikipedia.org/wiki/Cifra_de_Vigen%C3%A8re)

Dado uma string e uma palavra chave, retorne o texto cifrado. 
- A chave é repetida até até terminar a cifra
- Deve-se ignorar espaços em branco para gerar o texto claro
- A cifra é feita com uma soma módulo 26


Exemplo
```
Texto: 	        ATACARBASESUL
Chave: 	        LIMAOLIMAOLIM
Texto cifrado: 	LBMCOCJMSSDCX
```

```hs
vigenere "ATACARBASESUL" "LIMAO" == "LBMCOCJMSSDCX"
```