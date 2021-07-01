## countDiv - Contar quantas vezes um número divide o outro
[](solver.hs)

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
```
[(1000,0),(500,0),(250,0),(125,0),(62,1)...]
```

- Observe que conseguimos os 3 primeiros termos com resto 0, o que significa que conseguimos dividir o 1000 por 2 `3 vezes` e `sobra` 125.
- Utilize `takeWhile` para pegar toda a série inicial `que contém resto 0` enquanto o `valor não acabar`.

```
[(1000,0),(500,0),(250,0),(125,0)]
```
- Retorne o tamanho e o último valor da contagem e retornar o resultado final.


```hs
main = do
    print $ countDiv 1000 2
    print $ countDiv 4 2
    print $ countDiv 8 2
    print $ countDiv 24 2
    print $ countDiv 150 5
```

```
>>>>>>>>
========
(3,125)
(2,1)
(3,1)
(3,3)
(2,6)
<<<<<<<<
```