
## 01. `min2`
```hs
--IN : Dois números, x e y
--OUT: Menor valor entre x e y
min2 3 4 == 3
min2 4 1 == 1
```

## 02. `min3`
```hs
--IN : Três números, x, y e z
--OUT: Menor valor entre x, y e z
min3 1 2 3 == 1
min3 2 1 3 == 1
min3 3 4 2 == 2
min3 2 5 4 == 2
```

## 03. `fatorial`
```hs
--IN : Um natural n
--OUT: O fatorial de n
fatorial 0 == 1
fatorial 1 == 1
fatorial 5 == 120
```

## 04. `fibonacci`
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

## 05. `elemento`
```hs
--IN : Lista xs e um natural n
--OUT: N-ésimo termo de xs
elemento 2 [2,7,3,9] == 3
elemento 0 [2,7,3,9] == 2
elemento -1 [2,7,3,9] == 9
elemento -1 [2,7,3,9] == 9
```

## 06. `pertence`
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

## 07. `total`
```hs
--IN : Lista u
--OUT: Total de elementos de u.
--OBS: Não use função length
total [] == 0
total [1] == 1
total [2,3] == 2
total [3,2,1] == 3
```

## 08. `maior`
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

## 09. `frequencia`
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

## 10. `unico`
```hs
--IN : Lista u e valor x
--OUT: True se x ocorre exatamente uma vez em u e false do contrário

unico 2 [1,2,3,2] == False
unico 2 [3,1] == False
unico 2 [2] == True
```

## 11. `maioresQue`
```hs
--IN : Número x e uma lista u
--OUT: Sublista de u cujos números sejam maiores que x
--OBS: Faça usando filter e CList
maioresQue 10 [] == []
maioresQue 10 [11,9,12] == [11,12]
maioresQue 10 [4,6,30,3,15,3,10,7] == [30,15]
```

## 12. `concat`
```hs
--IN : Duas listas a e b
--OUT: Concatenação entre a e b
concat [] [] == []
concat [] [3,4] == [3,4]
concat [1,2] [] == [1,2]
concat [1,2] [3,4] == [1,2,3,4]
concat [1,2,3] [3,4] == [1,2,3,3,4]
```

## 13. `calda`
```hs
--IN : Uma lista u
--OUT: Calda de u
calda [1] == []
calda [1,2,3,4] == [2,3,4]
```

## 14. `corpo`
```hs
--IN : Uma lista u
--OUT: Corpo de u
corpo [1,2,3,4] == [1,2,3]
```

## 15. `unique`
```hs
--IN : Lista u com possíveis chaves repetidas
--OUT: Lista com as chaves de u sem repetições
unique [1,1,1] == [1]
unique [2,1,2,1,1,1,1,2] = [2,1]
unique [1,2,5,2,5,7,2,5] == [1,2,5,7]
```

## 16 `menores`
```hs
--IN : Natural n e lista u
--OUT: Lista com os n menores elementos de u na ordem que aparecem em u
--OBS: Não use filter nem list compreension, use recursão
menores 5 [6,1,2,3,4] == [6,1,2,3,4]
menores 4 [3,1,2] == [3,1,2]
menores 3 [5,3,1,9,7,2] == [3,1,2]
```

## 17. `alter`

```hs
--IN : Inteiro n
--OUT: Lista [1, −1, 2, −2, 3, −3, · · · , n, −n]

alter 1 = [1,-1]
alter 2 = [1,-1,2,-2]
alter 4 = [1,-1,2,-2,3,-3,4,-4]
```
## 18. `reverso`:
Implemente a função reverse com recursão
```hs
--IN : Lista u
--OUT: Lista das chaves de u na ordem inversa
reverso [] == []
reverso [7] == [7]
reverso [2,3] == [3,2]
reverso [1,2,3,4] == [4,3,2,1]
```

## 19. `divide`

```hs
--IN :Lista u e um natural n
--OUT: Tupla de duas listas, (A,B), onde A é formada pelas n primeiras chaves de u e B pelos elementos restantes}
divide [1,2,3,4] 0 == ([],[1,2,3,4])
divide [1,2,3,4] 1 == ([1],[2,3,4])
divide [1,2,3,4] 2 == ([1,2],[3,4])
divide [1,2,3,4] 3 == ([1,2,3],[4])
divide [1,2,3,4] 4 == ([1,2,3,4],[])
```
## 20. `intercal`
```hs
--IN : Duas listas a e b
--OUT: Lista com os elementos de a e b intercalados
intercal [1,2,3] [7,8,9] == [1,7,2,8,3,9]
intercal [1,2,3,4] [8,9] == [1,8,2,9,3,4]
intercal [5] [1,2,6] == [5,1,2,6]
```

## 21. `uniao`
```hs
--IN : Duas listas a e b sem repetição de chaves
--OUT: Lista das chaves de a e b sem repetição

uniao [4,5] [1] == [4,5,1]
uniao [4,5] [4,2,5] == [4,5,2]
uniao [1,2,3] [2,4,6] == [1,2,3,4,6]
```

## 22. `intersec` 
```hs
--IN : Duas listas a e b sem repetição de chaves
--OUT: Lista das chaves que a e b possuem em comum
intersec [3] [3] == [3]
intersec [3,4,1] [1,4,3] == [3,4,1]
intersec [3,6,5,7] [9,7,5,1,3,6] == [3,5,7,6]
intersec [3,6,5,7] [9,7,5,1,3] == [3,5,7]
```

## 23. `sequencia`
```hs
--IN : Dois números naturais n e m
--OUT: Lista [m, m+1, m+2, ..., m+n-1]
sequencia 0 2 == []
sequencia 1 2 == [2]
sequencia 3 5 == [5,6,7]
sequencia 4 4 == [4,5,6,8]
```

## 24. `inserir`
```hs
--IN : Número x e lista, u, de números ordenados ascendentemente
--OUT: Lista de números ordenados ascendentemente oriunda da inserção apropriada de x em u
inserir 3 [2,7,12] == [2,3,7,12]
inserir 1 [2,7,12] == [1,2,7,12]
inserir 10 [2,7,12] == [2,7,10,12]
inserir 15 [2,7,12] == [2,7,12,15]
```


## 25. `ordenada`
```hs
--IN : Lista de números, u
--OUT: Verdadeiro se u é ordenada e falso do contrário
ordenada [1,2,3,5] == True
ordenada [1,0,2,5] == False
ordenada [1,2,3,2] == False
ordenada [1,2,2,2,5] == True
```

## 26. `qsort`
```hs
--IN : Lista u de objetos ordenáveis
--OUT: Lista ordenada das chaves de u pelo método de ordenação rápida
qsort [7,3,5,7,8,4] == [3,4,5,7,7,8]
qsort [7,3,5,7,8,4,4] == [3,4,4,5,7,7,8]
qsort [7,3,5,7,8,4,5] == [3,4,5,5,7,7,8]
```

## `merge`
```hs
--IN : Duas listas ordenadas
--OUT: A união de ambas em uma única lista ordenada
--OBS: Percorra cada lista uma única vez na recursão
merge [1,3] [7,7,9] == [1,3,7,7,9]
merge [7,7,9] [1,3] == [1,3,7,7,9]
merge [1,3,5] [4,4,6,7] == [1,3,4,4,5,6,7]
merge [4,4,5,6,7] [1,3] == [1,3,4,4,5,6,7]
```


## 27. `rotEsq`
```hs
--IN : Um natural n e uma lista ou string S
--OUT: Lista S rotacionada n vezes à esquerda
rotEsq 0 "asdfg"  == "asdfg"
rotEsq 1 "asdfg"  == "sdfga"
rotEsq 3 "asdfg" == "fgasd"
rotEsq 4 "asdfg" == "gasdf"
```

## 28. `rotDir` 
```hs
--IN : Um natural n e uma lista ou string S
--OUT: Lista S rotacionada n vezes à direita
rotDir 0 "asdfg" == "asdfg"
rotDir 1 "asdfg" == "gasdf"
rotDir 3 "asdfg" == "fgasd"
rotDir 4 "asdfg" == "dfgas"
```

## 29. `upper` 
```hs
--IN : Uma string S
--OUT: Versão em caixa alta da string S
upper "abc" == "ABC"
upper "a Casa Caiu" == "A CASA CAIU"
upper "tenho 45 ABCs" == "TENHO 45 ABCS"`
```

## 30. `titulo`
```hs
--IN : String S
--OUT: Versão de S contendo todos os caracteres em caixa baixa exceto
--     aqueles que, por serem iniciais de palavras devem aparecer em 
--     caixa alta
titulo "FuLaNo bElTrAnO silva" == "Fulano Beltrano Silva"
```

## 31. `selec`
```hs
--IN : Uma lista qualquer u e uma lista de posições P
--OUT: Lista das chaves de u cujas posições estão em P
selec "abcdef" [0,3,2,3] == "adcd"
```

## 32. `isPalind` 
```hs
--IN : Uma string qualquer S
--OUT: Verdadeiro se S é um palíndromo e falso do contrário
isPalind "ana"   == True
isPalind "123aa321" == True
isPalind "cachorro" == False`
```

## 33. `ehPrimo`
```hs
--IN : Um natural n
--OUT: Verdadeiro se n é primo e falso do contrário
ehPrimo 1 == True
ehPrimo 2 == True
ehPrimo 10 == False
ehPrimo 13 == True
```

## 34. `sdig`
```hs
--IN : Natural n
--OUT: Soma dos dígitos de n
sdig 4132 == 10
sdig 328464584658 == 63
```

## 35. `bubble`
```hs
--IN : Lista ordenável u
--OUT: Versão ordenada de u pelo método de ordenação em bolhas
bubble [] == []
bubble [1] == [1]
bubble [1,3,4] == [1,3,4]
bubble [4,3,1] == [1,3,4]
```

## 36. `compac`
- IN : Lista de números u
- OUT: Lista de listas. Cada lista-componente possui um ou dois elementos. Quando possui dois, representa uma sequência de chaves repetidas de u, sendo o primeiro valor a chave que se repete e o segundo o total de repetições. Quando possui um elemento contém uma chave de u que não se repete.
```hs
compac [] == []
compac [1,1,1] == [[1,3]]
compac [1,2,3] == [[1],[2],[3]]
compac [2,2,2,3,4,4,2,9,5,2,4,5,5,5] == [[2,3],[3],[4,2],[2],[9],[5],[2],[4],[5,3]]
```

## 37. `splitints` 
- IN : Lista de inteiros positivos, u
- OUT: Tupla de duas listas, (A,B), onde A e B são respectivamente compostos pelos inteiros ímpares e pares de u
```hs
splitints [1,2,3,4,5,6,7] => ([1,3,5,7],[2,4,6])
splitints [2,4,6,1,1,7] => ([1,1,7],[2,4,6])
```

### 38. `quadperf`
- IN : Número inteiro positivo, n
- OUT: Verdadeiro se n for um quadrado perfeito e falso do contrário (Um *quadrado perfeito* é um número inteiro cuja raiz quadrada é também um número inteiro). Não utilizar operadores ou funções que retornem números reais.
```hs
quadperf 12 == False
quadperf 16 == True
quadperf 25 == True
quadperf 5 == False
```

## 39. base
```hs
--IN : Dois inteiros positivos, n e b (1<b<37)
--OUT: Representação na base b do inteiro n
base 17 2 == "10001"
base 26 16 == "1A"
```

## 40. partes 
- IN : Lista u
- OUT: Conjunto das partes de u (O conjunto das partes de um conjunto C é o conjunto de todos os subconjuntos distintos e possíveis de C)
```hs
partes [1,2] == [[],[1],[2],[1,2]]

partes [2,3,2,9] ==
[[],[2],[3],[9],[2,2],[2,3],[2,9],
[3,9],[2,2,3],[2,2,9],[2,3,9],[2,2,3,9]]
```