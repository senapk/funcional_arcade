
## min2
```hs
--IN : Dois números, x e y
--OUT: Menor valor entre x e y
min2 3 4 == 3
min2 4 1 == 4
```

## min3
```hs
--IN : Três números, x, y e z
--OUT: Menor valor entre x, y e z
min3 1 2 3 == 1
min3 2 1 3 == 1
min3 3 4 2 == 2
min3 2 5 4 == 2
```

## `fatorial`
```hs
--IN : Um natural n
--OUT: O fatorial de n
fatorial 0 == 1
fatorial 1 == 1
fatorial 5 == 120
```

## `fibonacci`
```hs
--IN : Inteiro positivo n
--OUT: N-ésimo termo da sequência
fib 0 == 0
fib 1 == 1
fib 2 == 1
fib 3 == 2
fib 4 == 3
fib 5 == 5
fib 5 == 8
```

## `elemento`
```hs
--IN : Lista xs e um natural n
--OUT: N-ésimo termo de xs
elemento 2 [2,7,3,9] == 3
elemento 0 [2,7,3,9] == 2
elemento -1 [2,7,3,9] == 9
elemento -1 [2,7,3,9] == 9
```

## `pertence`
```hs
--IN : Lista u e valor x
--OUT: Verdadeiro se x ∈ u e falso do contrário
pertence 1 [] == False
pertence 1 [3] == False
pertence 3 [3] == False
pertence 1 [3,7,4,2] == False
pertence 2 [3,7,4,2] == True
pertence 3 [3,7,4,2] == True
pertence 7 [3,7,4,2] == True
```

## `total`
```hs
--IN : Lista u
--OUT: Total de elementos de u.
--OBS: Não use função length
total [] == 0
total [1] == 1
total [2,3] == 2
total [3,2,1] == 3
```

## `maior`
```hs
--IN : Lista u
--OUT: O maior valor de u
--OBS: Não usar função max
maior [4] == 4
maior [5,1] == 5
maior [5,7] == 7
maior [1,2,7,1,5] == 7
maior [1,2,3,1,5] == 5

```

## `frequencia`
```hs
--IN : Lista u e valor x
--OUT: O total de ocorrências de x em u
frequencia 1 [] == 0
frequencia 4 [4] == 1
frequencia 4 [5] == 1
frequencia 4 [4,4] == 2
frequencia 2 [4,4] == 0
frequencia 5 [4,5,2,1,5,5,9] == 3
```

## `unico`
```hs
--IN : Lista u e valor x
--OUT: True se x ocorre exatamente uma vez em u e false do contrário

unico 2 [1,2,3,2] == False
unico 2 [3,1] == False
unico 2 [2] == True
```

## `maioresQue`
```hs
--IN : Número x e uma lista u
--OUT: Sublista de u cujos números sejam maiores que x
--OBS: Faça usando filter e CList
maioresQue 10 [] == []
maioresQue 10 [11,9,12] == [11,12]
maioresQue 10 [4,6,30,3,15,3,10,7] == [30,15]
```

## `concat`
```hs
--IN : Duas listas a e b
--OUT: Concatenação entre a e b
concat [] [] == []
concat [] [3,4] == [3,4]
concat [1,2] [] == [1,2]
concat [1,2] [3,4] == [1,2,3,4]
concat [1,2,3] [3,4] == [1,2,3,3,4]
```

## `calda`
```hs
--IN : Uma lista u
--OUT: Calda de u
calda [1,2,3,4] == [2,3,4]
```

## `corpo`
```hs
--IN : Uma lista u
--OUT: Corpo de u
corpo [1,2,3,4] == [1,2,3]
```

## `unique`
```hs
--IN : Lista u com possíveis chaves repetidas
--OUT: Lista com as chaves de u sem repetições
```

## `menores`
```hs
--IN : Natural n e lista u
--OUT: Lista com os n menores elementos de u na ordem que aparecem em u
--OBS: Não use filter nem list compreension
menores 3 [5,3,1,9,7,2] == [3,1,2]
menores 5 [6,1,2,3,4] == [6,1,2,3,4]
menores 4 [3,1,2] == [3,1,2]
```

## `alter`

```hs
--IN : Inteiro n
--OUT: Lista [1, −1, 2, −2, 3, −3, · · · , n, −n]

```