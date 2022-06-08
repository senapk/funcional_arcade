# Inputs em Haskell
[](solver.hs)

<!--TOC_BEGIN-->
- [Lendo variáveis.](#lendo-variáveis)
- [Imprimindo e concatenando Strings](#imprimindo-e-concatenando-strings)
- [Lendo de várias linhas seguidas](#lendo-de-várias-linhas-seguidas)
- [Lendo vários na mesma linha](#lendo-vários-na-mesma-linha)
- [Convertendo individualmente](#convertendo-individualmente)
- [Formatando vetor na saída](#formatando-vetor-na-saída)
- [Read a matrix](#read-a-matrix)
<!--TOC_END-->

## Lendo variáveis.
Se a variável estiver sozinha na linha e formatada de acordo com o padrão do haskell é possível lê-la assim:

- `readLn :: IO TIPO` -- lê uma linha e tenta converter para esse tipo
    - só funciona se o tipo estiver escrito no formato padrão do haskell
    - por exemplo `(x,y,z)` para tuplas ou `[1,2,3,4]` para vetores
    - respeitando a escrita, você pode ler facilmente qualquer tipo.
- print - imprime esse tipo no seu formato padrão.
    - strings vão sair entre aspas

<!--ADD alone.hs hs-->
```hs
main = do
    i <- readLn :: IO Int    -- pega um inteiro
    f <- readLn :: IO Float  -- pega um float
    (l, c) <- readLn :: IO (Int, Float) -- pega dois inteiros
    lista <- readLn :: IO [Int] -- pega uma lista de inteiros
    listaTup <- readLn :: IO [(String, String)]
    print i
    print f
    print (l, c)
    print lista
```
<!--ADD_END-->

Exemplo de entrada
<!--ADD alone.txt txt-->
```txt
5
6.5
(4,9.8)
[1,2,3,4,5,9]
[("ovo", "ova"), ("carro", "moto")]
```
<!--ADD_END-->

## Imprimindo e concatenando Strings

- `print` - imprime o dado formatado
- `putStrLn` - imprime uma string sem colocar as aspas
- `putStr` - imprime uma string sem a quebra de linha
- `show` - converte de um tipo qualquer para string

<!--ADD str.hs hs-->
```hs
main = do
    line <- getLine
    value <- readLn :: IO Int
    putStrLn $ line ++ " " ++ show value
```
<!--ADD_END-->

Exemplo de entrada

<!--ADD str.txt txt-->
```txt
hoje eh dia
5
```
<!--ADD_END-->

## Lendo de várias linhas seguidas

- `replicateM` - executa N vezes uma função de leitura como `getLine` ou `readLn :: IO Tipo` para carregar um vetor.

<!--ADD veclines.hs hs-->
```hs
import Control.Monad (replicateM)

main = do
    size <- readLn :: IO Int
    vet <- replicateM size (readLn :: IO Int)
    print vet
```
<!--ADD_END-->

Exemplo de entrada

<!--ADD veclines.txt txt-->
```txt
5
0
1
2
3
4
```
<!--ADD_END-->


## Lendo vários na mesma linha

Você pode ler com `getLine`, quebrar em vetor de palavras com `words` e converter para vetor de inteiros.

<!--ADD many.hs hs-->
```hs
main :: IO ()
main = do
    line <- getLine -- lendo a linha
    -- (words line) gera um vetor de palavras
    -- map (read :: String -> Int) converte para vetor de inteiros
    let xs = map (read::String -> Int) . words $ line
    print xs
```
<!--ADD_END-->


<!--ADD many2.hs hs-->
```hs
-- fmap é capaz de aplicar uma função ao getline diretamente
main :: IO ()
main = do
    --xs <- fmap (map (read :: String->Int) . words) getLine
    xs <- map (read :: String->Int) . words <$> getLine
    print xs
```
<!--ADD_END-->

<!--ADD many.txt txt-->
```txt
1 2 3 4 5 6 7 8 9 0
```
<!--ADD_END-->

## Convertendo individualmente

<!--ADD single.hs hs-->
```hs
main = do
    xs <- fmap words getLine
    
    let name = head xs
    let age = (read :: String -> Int) (xs !! 1)
    let height = read (xs !! 2) :: Float
    putStrLn $ name ++ " tem " ++ show age ++ " anos e mede " ++ show height
```
<!--ADD_END-->

Ou por atribuição direta

<!--ADD single2.hs hs-->
```hs
main = do
    [name, age', height'] <- fmap words getLine
    let age = read age' :: Int
    let height = read height' :: Float
    putStrLn $ name ++ " tem " ++ show age ++ " anos e mede " ++ show height
```
<!--ADD_END-->


Entrada

<!--ADD single.txt txt-->
```txt
david 17 1.75
```
<!--ADD_END-->

## Formatando vetor na saída

Imprimindo vetor de inteiros no formato 

[ 1 2 3 4 5 6 7 ]

<!--ADD formatvet.hs hs-->
```hs
import Data.List ( intercalate )

main = do
    vet <- fmap (map (read :: String -> Int) . words) getLine
    let vet2 = map (+10) vet -- somando + 10
    let vet3 = map show vet2 -- transformando em string
    putStrLn $ "[ " ++ intercalate " " vet3 ++ " ]"
```
<!--ADD_END-->

Entrada

<!--ADD formatvet.txt txt-->
```txt
1 2 3 4 5 6 7 8
```
<!--ADD_END-->

## Read a matrix

- `<$>` é o operador equivalente ao `fmap`
- a lista já é atribuida diretamente nos valores `[nl, nc]`
- `replicateM` repeats many times de input comannd `getline` to make a vector os strings
- `mapM_` apply putStrLn for each line of mat


<!--ADD mat.hs hs-->
```hs
import Control.Monad (replicateM)

main :: IO ()
main = do
    [nl, nc] <-  map (read :: String -> Int) . words <$> getLine
    mat <- replicateM nl getLine
    mapM_ putStrLn mat 
```
<!--ADD_END-->

<!--ADD mat.txt txt-->
```txt
3 9
####...##
####.....
#.##...##
```
<!--ADD_END-->
