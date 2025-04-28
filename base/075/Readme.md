# expoentes - REVIEW mudar para testes normais

Verifique quantas vezes um número é divisível por outro.

Retorne uma tupla com a quantidade de vezes e o valor final das divisões.

Orientação: 

- Utilize o `iterate` para realizar o laço. Seu elemento a ser iterado inicia em `(valor, 0)`. O iterate recebe uma função e UM valor e gera uma lista infinita de aplições da função sobre o valor.

```hs
>>> iterate not True
[True,False,True,False...
>>> iterate (+3) 42
[42,45,48,51,54,57,60,63...
```

- A cada iteração, você gera uma nova divisão e módulo. Você pode usar o operador `divMod` do prelude.
- Realizando essa iteração com os valores 1000 e 2, `os 5 primeiros termos` seriam

```txt
[(1000,0),(500,0),(250,0),(125,0),(62,1)...]
```

- Observe que conseguimos os 3 primeiros termos com resto 0, o que significa que conseguimos dividir o 1000 por 2 `3 vezes`

```txt
[(1000,0),(500,0),(250,0),(125,0)]
```

```hs
main = do
    print $ expoentes 7 2
    print $ expoentes 4 2
    print $ expoentes 8 2
    print $ expoentes 24 2
    print $ expoentes 1024 2
    print $ expoentes 150 5
```

```txt
>>>>>>>>
========
<<<<<<<<
```
