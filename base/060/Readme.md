# maxsubseq

[](solver.hs)

## Guia

- IN : Lista u de inteiros (podem ser positivos, negativos ou zero)
- OUT: Sublista de u de elementos consecutivos cuja soma é máxima

Primeiro você precisa gerar todas as subsequencias possíveis e depois procurar a que gera maior soma.

```hs
> all_subseqs [1..4]
[[],[1],[1,2],[1,2,3],[1,2,3,4],[],[2],[2,3],[2,3,4],[],[3],[3,4],[],[4],[]]
```

Para isso, uma técnica interessante é utilizar as funções `inits`, `tails` e `concatMap` do módulo `Data.List`. Aprenda como elas funcionam e crie inicialmente sua própria versão dessas três funções.

A implementação de `all_subs` fica fácil assim:

```hs
all_subseq = concatMap inits . tails
```

Você também precisará construir uma função que retorna o maior valor de uma lista dada uma função de comparação entre os elementos dessa lista. Na Data.List você tem a função `maximumBy`. Ela recebe uma função de comparação, que no nosso caso **não** seria a função `sum` apenas, seria a comparação das `sum`.

```hs
my_compare fn x y = compare (fn x) (fn y)
```

Nossa função my_compare retorna um tipo `Ordering`. `compare` recebe dois valores e retorna LT, GT ou EQ. `my_compare` é equivalente a invocar `comparing sum` da biblioteca padrão, que aplica a função `sum` em ambos os valores e invoca `compare`.

## Utilizando as bibliotecas do Haskell

Essa seria a resposta do problema utilizando as versões nativas do haskell.

```txt
import Data.List (inits, tails, maximumBy)
import Data.Ord (comparing)
 
subseqs :: [a] -> [[a]]
subseqs = concatMap inits . tails
 
maxsubseq :: (Ord a, Num a) => [a] -> [a]
maxsubseq = maximumBy (comparing sum) . subseqs
 
main = print $ maxsubseq [-1, -2, 3, 5, 6, -2, -1, 4, -4, 2, -1]
```

Agora implemente as suas versões das funções `inits`, `tails`, `concatMap` e `maximumBy`.

```hs
--IN : Lista u de inteiros (podem ser positivos, negativos ou zero)
--OUT:  Sublista de u de elementos consecutivos cuja soma é máxima
maxsubseq [] == []
maxsubseq [1,3,-5,1,2,-2] == [1,3]
maxsubseq [2,3,-1,2,-3,2] == [2,3,-1,2]
maxsubseq [4,3,1] == [4,3,1]
maxsubseq [2,1,-4,9,7,-1,5] == [9,7,-1,5]
```

## Testes

```txt
>>>>>>>>
[]
========
[]
<<<<<<<<

>>>>>>>>
[1,3,-5,1,2,-2]
========
[1,3]
<<<<<<<<

>>>>>>>>
[2,3,-1,2,-3,2]
========
[2,3,-1,2]
<<<<<<<<

>>>>>>>>
[4,3,1]
========
[4,3,1]
<<<<<<<<

>>>>>>>>
[2,1,-4,9,7,-1,5]
========
[9,7,-1,5]
<<<<<<<<

```
