## L2 - {robot} distance

![](__capa.jpg)

- Seja uma string formada por dígitos e underlines `.`.
- Seja um valor de limite L.

Objetivos:
- Você deve substituir todos os `.` por dígitos seguindo as seguintes regras.
    - Só pode utilizar dígitos de 0 até L, incluindo L.
    - Qualquer dígito precisa estar a uma distância mínima de L casas de outra ocorrência dele mesmo, tanto à esquerda como à direita.

- Para cada problema, existe uma e somente uma solução.

## Entrada e Saída
- Entrada
    - 1a linha: sequência.
    - 2a linha: valor de L.
- Saída
    - A string solução do problema.


## Limites
- sequência de tamanho t, 0 > t > 100
- 0 > L > 100

___
Testes:

```


>>>>>>>>
01.2.
3
========
01320
<<<<<<<<



>>>>>>>> 02
.0..231..5
5
========
1045231045
<<<<<<<<

>>>>>>>> 01
2..0..............3...........
3
========
213021302130213021302130213021
<<<<<<<<


>>>>>>>> 03
0..32..41.
5
========
0413250413
<<<<<<<<


>>>>>>>> 03
9....7.620.5318.....
9
========
95318746209531874620
<<<<<<<<

>>>>>>>>
12.3...0
4
========
12034120
<<<<<<<<

>>>>>>>>
0.76.14..2..5..
7
========
027651430276514
<<<<<<<<

```


## Ajuda

```hs
import Data.List
import Data.Maybe

-- retorna o subvetor incluindo o elemento posição índice e lim elementos a esquerda e a direita
neib :: [a] -> Int -> Int -> [a]
neib xs index lim = ...

-- verifica se o valor existe no vetor
exists :: Eq a => a -> [a] -> Bool
exists y xs = ...

-- converte de digito para char
dig2char :: (Eq a, Num a, Enum a) => a -> Char
dig2char dig = ...

-- verifica se esse valor pode ser inserido nesse índice
fit :: (String, Int) ->  Int -> Int -> Bool
fit (xs, lim) index value = ...

-- pega as posições de todos os .
getHoles :: String -> [Int]
getHoles xs = ...

-- insere esse valor nesse index e retorna o novo vetor resultante
set :: String -> Int -> Int -> String
set xs index value = ...

-- tenta resolver o problema para essa posição
-- se é possível resolver, retorna Just resposta, senão Nothing
-- problema (xs, lim)
-- holes: lista de posições a serem preenchidas
-- hindex: posicao atual no vetor de holes
solve :: (String, Int) -> [Int] -> Int -> Maybe String
solve (xs, lim) holes hindex = ...

-- prepara a entrada para a função recursiva de resolução
mainSolver :: String -> Int -> String
mainSolver xs lim = ...

main :: IO ()
main = do
    xs <- getLine
    lim <- readLn :: IO Int
    putStrLn $ mainSolver xs lim


------------------------------------------------------------------------------------
-- Testes para lhe auxiliar a construir a solução de forma mais segura
------------------------------------------------------------------------------------


neibTest :: IO ()
neibTest = do
    print $ neib "abcdef.." 0 2 == "abc"
    print $ neib "abc.def"  3 1 == "c.d"
    print $ neib "abc.def"  3 2 == "bc.de"
    print $ neib "abc.def"  1 2 == "abc."
    print $ neib "abc.def"  5 3 == "c.def"

dig2charTest :: IO ()
dig2charTest = do
    print $ map dig2char [0..9] == ['0'..'9']

setTest :: IO ()
setTest = do
    print $ set "12345" 0 9 == "92345"
    print $ set "12345" 1 9 == "19345"
    print $ set "12345" 4 9 == "12349"

fitTest :: IO ()
fitTest = do -- (fit ("12.345", 1) 2) se torna uma função curry faltando só uma var que seria o valor recebido do vetor
    print $ map (fit ("12.345", 1) 2) [1,2,3,4,5] == [True, False, False, True, True]
    print $ map (fit ("12.345", 2) 2) [1,2,3,4,5] == [False, False, False, False, True]
    print $ map (fit ("12.345", 3) 2) [1,2,3,4,5] == [False, False, False, False, False]
    print $ map (fit ("12345.", 4) 5) [1,2,3,4,5] == [True, False, False, False, False]

getHolesTest :: IO ()
getHolesTest = do
    print $ getHoles "12.3.." == [2,4,5]
    print $ getHoles "12.3.4" == [2,4]
    print $ getHoles "...3.4" == [0,1,2,4]

mainTest :: IO ()
mainTest = do
    print $ mainSolver "01.2." 3 == "01320"
    print $ mainSolver ".0..231..5" 5 == "1045231045"
    print $ mainSolver "2..0..............3..........." 3 == "213021302130213021302130213021"
    print $ mainSolver "0..32..41." 5 == "0413250413"
    print $ mainSolver "9....7.620.5318....." 9 == "95318746209531874620"

```