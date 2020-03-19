*Utilizando Haskell, construir as funções seguintes.*

1.  \
    [Input:]{.smallcaps} Dois números, $x$ e $y$\
    [Output:]{.smallcaps} menor valor entre $x$ e $y$

2.  \
    [Input:]{.smallcaps} Três números, $x$, $y$ e $z$\
    [Output:]{.smallcaps} menor valor entre $x$, $y$ e $z$

3.  \
    [Input:]{.smallcaps} Um natural $n$\
    [Output:]{.smallcaps} O fatorial de $n$

4.  \
    [Input:]{.smallcaps} Inteiro positivo $n$\
    [Output:]{.smallcaps} $n$-ésimo termo da sequência de Fibonacci
    (iniciando em com 0 e 1)

5.  \
    [Input:]{.smallcaps} Lista $u$ e um natural $n$\
    [Output:]{.smallcaps} $n$-ésimo termo de $u$\
    [Ex(s)]{.smallcaps}:\
    `elemento 2 [2,7,3,9] ==> 3`

6.  \
    [Input:]{.smallcaps} Lista $u$ e valor $x$\
    [Output:]{.smallcaps} Verdadeiro se $x \in u$ e falso do contrário\
    [Ex(s)]{.smallcaps}:\
    `pertence 1 [3,7,4,2] ==> False `

7.  \
    [Input:]{.smallcaps} Lista $u$\
    [Output:]{.smallcaps} total de elementos de $u$. Não use função
    `length`.

8.  \
    [Input:]{.smallcaps} Lista $u$\
    [Output:]{.smallcaps} A chave de valor máximo em $u$. Não usar
    função `max`.

9.  \
    [Input:]{.smallcaps} Lista $u$ e valor $x$\
    [Output:]{.smallcaps} Retorna o total de ocorrências de $x$ em $u$.\
    [Ex(s)]{.smallcaps}:\
    `frequencia 5 [4,5,2,1,5,5,9] ==> 3`

10. \
    [Input:]{.smallcaps} Lista $u$ e valor $x$\
    [Output:]{.smallcaps} Verdadeiro se $x$ ocorre exatamente uma vez em
    $u$ e falso do contrário\
    [Ex(s)]{.smallcaps}:\
    `unico 2 [1,2,3,2] ==> False unico 2 [3,1] ==> False unico 2 [2] ==> True`

11. \
    [Input:]{.smallcaps} Número $x$ e uma lista $u$ de números\
    [Output:]{.smallcaps} Sublista de $u$ cujos números sejam maiores
    que $x$\
    [Ex(s)]{.smallcaps}:\
    `maioresQue 10 [4 6 30 3 15 3 10 7] ==> [30, 15]`

12. \
    [Input:]{.smallcaps} Duas listas $a$ e $b$\
    [Output:]{.smallcaps} Concatenação entre $a$ e $b$\
    [Ex(s)]{.smallcaps}:\
    `concat [] [] ==> [] (concat [1,2] [3,4] ==> [1,2,3,4]`

13. \
    [Input:]{.smallcaps} Uma lista $u$\
    [Output:]{.smallcaps} Calda de $u$ ($u$ sem a primeira chave)\
    [Ex(s)]{.smallcaps}:\
    `calda [1,2,3,4] ==> [2,3,4]`

14. \
    [Input:]{.smallcaps} Uma lista $u$\
    [Output:]{.smallcaps} Corpo de $u$ ($u$ sem a última chave)\
    [Ex(s)]{.smallcaps}:\
    `corpo [1,2,3,4] ==> [1,2,3]`

15. \
    [Input:]{.smallcaps} Lista $u$ com possíveis chaves repetidas\
    [Output:]{.smallcaps} Lista com as chaves de $u$ sem repetições\
    [Ex(s)]{.smallcaps}:\
    `[1,2,5,2,5,7,2,5] ==> [1,2,5,7]`

16. \
    [Input:]{.smallcaps} Natural $n$ e lista $u$\
    [Output:]{.smallcaps} Lista com os $n$ menores elementos de $u$ na
    ordem que aparecem em $u$\
    [Ex(s)]{.smallcaps}:\
    `menores 3 [5,3,1,9,7,2] ==> [3,1,2] menores 5 [6,1,2,3,4] ==> [6,1,2,3,4] menores 4 [3,1,2] ==> [3,1,2]`

17. \
    [Input:]{.smallcaps} Inteiro $n$\
    [Output:]{.smallcaps} Lista $[1,-1,2,-2,3,-3,\cdots,n, -n]$

18. \
    [Input:]{.smallcaps} Lista $u$\
    [Output:]{.smallcaps} Lista das chaves de $u$ na ordem inversa.\
    [Ex(s)]{.smallcaps}:\
    `reverso [1,2,3,4] ==> [4,3,2,1]`

19. \
    [Input:]{.smallcaps} Lista $u$ e um natural $n$\
    [Output:]{.smallcaps} Tupla de duas listas, $(A,B)$, onde $A$ é
    formada pelas $n$ primeiras chaves de $u$ e $B$ pelos elementos
    restantes\
    [Ex(s)]{.smallcaps}:\
    `divide [1,2,3,4] 2 ==> ([1,2],[3,4]) divide [1,2,3,4] 0 ==> ([],[1,2,3,4])`

20. \
    [Input:]{.smallcaps} Duas listas $a$ e $b$\
    [Output:]{.smallcaps} Lista com os elementos de $a$ e $b$
    intercalados\
    [Ex(s)]{.smallcaps}:\
    `intercal [1,2,3] [7,8,9] ==> [1,7,2,8,3,9] intercal [1,2,3] [8,9] ==> [1,8,2,9,3] intercal [] [1,2,6] ==> [1,2,6]`

21. \
    [Input:]{.smallcaps} Duas listas $a$ e $b$ sem repetição de chaves\
    [Output:]{.smallcaps} Lista das chaves de $a$ e $b$ sem repetição\
    [Ex(s)]{.smallcaps}:\
    `uniao [1,2,3] [2,4,6] ==> [1,2,3,4,6] uniao [4,5] [1] ==> [4,5,1]`

22. \
    [Input:]{.smallcaps} Duas listas $a$ e $b$ sem repetição de chaves\
    [Output:]{.smallcaps} Lista das chaves que $a$ e $b$ possuem em
    comum\
    [Ex(s)]{.smallcaps}:\
    `intersec [3,6,5,7] [9,7,5,1,3] ==> [3,5,7]`

23. \
    [Input:]{.smallcaps} Dois números naturais $n$ e $m$\
    [Output:]{.smallcaps} Lista $[m, m+1, m+2, \cdots, m+n-1]$\
    [Ex(s)]{.smallcaps}:\
    `sequencia 0 2 ==> [] sequencia 3 4 ==> [4,5,6] `

24. \
    [Input:]{.smallcaps} Número $x$ e lista, $u$, de números ordenados
    ascendentemente\
    [Output:]{.smallcaps} Lista de números ordenados ascendentemente,
    oriunda da inserção apropriada de $x$ em $u$

    inserir 3 \[2,7,12\] ==\> \[2,3,7,12\]

25. \
    [Input:]{.smallcaps} Lista de números, $u$\
    [Output:]{.smallcaps} Verdadeiro se $u$ é ordenada e falso do
    contrário

26. \
    [Input:]{.smallcaps} Lista $u$ de objetos ordenáveis\
    [Output:]{.smallcaps} Lista ordenada das chaves de $u$ pelo método
    de ordenação rápida\
    [Ex(s)]{.smallcaps}:\
    `qsort [7,3,5,7,8,4,4] ==> [3,4,4,5,7,7,8]`

27. \
    [Input:]{.smallcaps} Um natural $n$ e uma lista ou string $S$\
    [Output:]{.smallcaps} Lista $S$ rotacionada $n$ vezes à esquerda\
    [Ex(s)]{.smallcaps}:\
    `rotEsq 0 "asdfg"    ==> "asdfg" rotEsq 1 "asdfg"    ==> "sdfga" rotEsq 3 "asdfg"    ==> "fgasd" rotEsq 4 "asdfg"    ==> "gasdf"`

28. \
    [Input:]{.smallcaps} Um natural $n$ e uma lista ou string $S$\
    [Output:]{.smallcaps} Lista $S$ rotacionada $n$ vezes à direita\
    [Ex(s)]{.smallcaps}:\
    `rotDir 0 "asdfg"    ==> "asdfg" rotDir 1 "asdfg"    ==> "gasdf" rotDir 3 "asdfg"    ==> "fgasd" rotDir 4 "asdfg"    ==> "dfgas"`

29. \
    [Input:]{.smallcaps} Uma string $S$\
    [Output:]{.smallcaps} Versão em caixa alta da string $S$\
    [Ex(s)]{.smallcaps}:\
    `upper "abc"   ==> "ABC" upper "a Casa Caiu"   ==> "A CASA CAIU" upper "tenho 45 ABCs"   ==> "TENHO 45 ABCS"`

30. \
    [Input:]{.smallcaps} String $S$\
    [Output:]{.smallcaps} Versão de $S$ contendo todos os caracteres em
    caixa baixa exceto aqueles que, por serem iniciais de palavras,
    devem aparecer em caixa alta\
    [Ex(s)]{.smallcaps}:\
    `titulo "FuLaNo bElTrAnO silva"    ==> "Fulano Beltrano Silva"`

31. \
    [Input:]{.smallcaps} Uma lista qualquer $u$ e uma lista de posições
    $P$\
    [Output:]{.smallcaps} Lista das chaves de $u$ cujas posições estão
    em $P$\
    [Ex(s)]{.smallcaps}:\
    `selec "abcdef" [0,3,2,3] ==> "adcd"`

32. \
    [Input:]{.smallcaps} Uma string qualquer $S$\
    [Output:]{.smallcaps} Verdadeiro se $S$ é um palíndromo e falso do
    contrário\
    [Ex(s)]{.smallcaps}:\
    `isPalind "ana"   ==> True isPalind "123aa321"   ==> True isPalind "cachorro"   ==> False`

33. \
    [Input:]{.smallcaps} Um natural $n$\
    [Output:]{.smallcaps} Verdadeiro se $n$ é primo e falso do contrário

34. \
    [Input:]{.smallcaps} Natural $n$\
    [Output:]{.smallcaps} Soma dos dígitos de $n$\
    [Ex(s)]{.smallcaps}:\
    `sdig 328464584658 ==> 63`

35. \
    [Input:]{.smallcaps} Lista ordenável $u$\
    [Output:]{.smallcaps} Versão ordenada de $u$ pelo método de
    ordenação em bolhas

36. \
    [Input:]{.smallcaps} Lista de números $u$\
    [Output:]{.smallcaps} Lista de listas. Cada lista-componente possui
    um ou dois elementos. Quando possui dois, representa uma sequência
    de chaves repetidas de $u$, sendo o primeiro valor o total de
    repetições e o segundo a chave que se repete. Quando possui um
    elemento contém uma chave de $u$ que não se repete.\
    [Ex(s)]{.smallcaps}:\
    `compac [2,2,2,3,4,4,2,9,5,2,4,5,5,5] ==> [[3,2],[3],[2,4],[2],[9],[5],[2],[4],[3,5]]`

37. \
    [Input:]{.smallcaps} Lista de inteiros positivos, $u$\
    [Output:]{.smallcaps} Tupla de duas listas, $(A,\,B)$, onde $A$ e
    $B$ são respectivamente compostos pelos inteiros ímpares e pares de
    $u$\
    [Ex(s)]{.smallcaps}:\
    `splitints [1,2,3,4,5,6,7] => ([1,3,5,7],[2,4,6])`

38. \
    [Input:]{.smallcaps} Número inteiro positivo, $n$\
    [Output:]{.smallcaps} Verdadeiro se $n$ for um quadrado perfeito e
    falso do contrário (Um *quadrado perfeito* é um número inteiro cuja
    raiz quadrada é também um número inteiro). Não utilizar operadores
    ou funções que retornem números reais.

39. \
    [Input:]{.smallcaps} Dois inteiros positivos, $n$ e $b$ ($1<b<37$)\
    [Output:]{.smallcaps} Representação na base $b$ do inteiro $n$\
    [Ex(s)]{.smallcaps}:\
    `base 17 2 ==> "10001" base 26 16 ==> "1A"`

40. \
    [Input:]{.smallcaps} Lista $u$\
    [Output:]{.smallcaps} Conjunto das partes de $u$ (O conjunto das
    partes de um conjunto $C$ é o conjunto de todos os subconjuntos
    distintos e possíveis de $C$)

    partes \[2,3,2,31\] ==\>
    \[\[\],\[2\],\[3\],\[31\],\[2,2\],\[2,3\],\[2,31\],
    \[3,31\],\[2,2,3\],\[2,2,31\],\[2,3,31\],\[2,2,3,31\]\]
