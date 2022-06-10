# Inputs em Haskell
[](solver.hs)

<!--TOC_BEGIN-->
- [Lendo variáveis.](#lendo-variáveis)
    - [Entrada](#entrada)
    - [Saída](#saída)
    - [Código](#código)
- [Lendo, imprimindo e concatenando Strings](#lendo-imprimindo-e-concatenando-strings)
    - [Entrada](#entrada)
    - [Saída](#saída)
    - [Código](#código)
- [Lendo de várias linhas seguidas](#lendo-de-várias-linhas-seguidas)
    - [Entrada](#entrada)
    - [Saída](#saída)
    - [Código](#código)
- [Lendo vários na mesma linha](#lendo-vários-na-mesma-linha)
    - [Entrada](#entrada)
    - [Saída](#saída)
    - [Código](#código)
- [Convertendo individualmente](#convertendo-individualmente)
    - [Entrada](#entrada)
    - [Saída](#saída)
    - [Código](#código)
- [Formatando vetor na saída](#formatando-vetor-na-saída)
    - [Entrada](#entrada)
    - [Código](#código)
- [Leia uma matriz de char](#leia-uma-matriz-de-char)
    - [Entrada](#entrada)
    - [Saída](#saída)
    - [Código](#código)
<!--TOC_END-->

## Lendo variáveis.

```
>>>>>>>> label 00
5
6.5
(4,9.8)
[1,2,3,4,5,9]
[("ovo", "ova"), ("carro", "moto")]
========
5
6.5
(4,9.8)
[1,2,3,4,5,9]
[("ovo","ova"),("carro","moto")]
<<<<<<<<
```
___
Se a variável estiver sozinha na linha e formatada de acordo com o padrão do haskell é possível lê-la assim:

- `readLn :: IO TIPO` -- lê uma linha e tenta converter para esse tipo
    - só funciona se o tipo estiver escrito no formato padrão do haskell
    - por exemplo `(x,y,z)` para tuplas ou `[1,2,3,4]` para vetores
    - respeitando a escrita, você pode ler facilmente qualquer tipo.
- print - imprime esse tipo no seu formato padrão.
    - strings vão sair entre aspas

[](00_alone.hs)
<!--ADD 00_alone.hs hs-->
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
    print listaTup
```
<!--ADD_END-->


___
## Lendo, imprimindo e concatenando Strings

Leia uma frase na primeira linha e um inteiro na segunda linha imprima a concatenação.

```txt
>>>>>>>>
hoje eh dia
5
========
hoje eh dia 5
<<<<<<<<
```

- `getLine` - pega a linha inteira como string
- `print` - imprime o dado formatado
- `putStrLn` - imprime uma string sem colocar as aspas
- `putStr` - imprime uma string sem a quebra de linha
- `show` - converte de um tipo qualquer para string

<!--ADD 01_str.hs hs-->
```hs
main = do
    line <- getLine
    value <- readLn :: IO Int
    putStrLn $ line ++ " " ++ show value
```
<!--ADD_END-->

___
## Lendo de várias linhas seguidas

- Leia o tamanho N do vetor e depois N linhas contendo cada linha um elemento do vetor.


```txt
>>>>>>>>
5
0
1
2
3
4
========
[0,1,2,3,4]
<<<<<<<<
```

- `replicateM` - executa N vezes uma função de leitura como `getLine` ou `readLn :: IO Tipo` para carregar um vetor.

<!--ADD 02_veclines.hs hs-->
```hs
import Control.Monad (replicateM)

main = do
    size <- readLn :: IO Int
    vet <- replicateM size (readLn :: IO Int)
    print vet
```
<!--ADD_END-->


___
## Lendo vários na mesma linha
Leia vários inteiros na mesma linha e transforme-os em um vetor de inteiros.

```txt
>>>>>>>>
1 2 3 4 5 6 7 8 9 0
========
[1,2,3,4,5,6,7,8,9,0]
<<<<<<<<
```

- Você pode ler com `getLine`, quebrar em vetor de palavras com `words` e converter para vetor de inteiros.

[](03_many1.hs)
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

- Uma forma de fazer a leitura, decomposição em palavras e transformação em inteiro na mesma linha é através do
`fmap`. O `fmap` é capaz de aplicar uma função dentro de um monad. Ele também pode ser utilizado através do
operador `<$>`.
- Nesse caso, as duas linhas são equivalentes.
    - `xs <- fmap (map (read :: String->Int) . words)    getLine`
    - `xs <-       map (read :: String->Int) . words <$> getLine`

<!--ADD 03_many2.hs hs-->
```hs
-- fmap é capaz de aplicar uma função ao getline diretamente
main :: IO ()
main = do
    xs <- fmap (map (read :: String->Int) . words) getLine
    print xs
```
<!--ADD_END-->

<!--ADD 03_many3.hs hs-->
```hs
-- fmap é capaz de aplicar uma função ao getline diretamente
main :: IO ()
main = do
    xs <- fmap (map (read :: String->Int) . words) getLine
    print xs
```
<!--ADD_END-->


___
## Convertendo individualmente

Leia uma palavra, um inteiro e um float na mesma linha.

### Entrada

<!--ADD single.txt txt-->
```txt
david 17 1.75
```
<!--ADD_END-->

### Saída

<!--ADD single.out.txt txt-->
```txt
david tem 17 anos e mede 1.75
```
<!--ADD_END-->

### Código
- A função `read :: String -> TipoSaída` pode ser utilizada para converter de string para um tipo qualquer
- Ela também pode ser utilizada como `read value :: TipoSaída`, omitindo assim o tipo de entrada.

[](single.hs)
<!--ADD single.hs hs-->
```hs
main = do
    xs <- words <$> getLine -- lendo a linha e quebrando num vetor de palavras
    
    let name = head xs  
    let age = (read :: String -> Int) (xs !! 1) -- utilizando a função com descrição completa
    let height = read (xs !! 2) :: Float        -- utilizando a função com parâmetro

    -- utilizando a função show para converter age e height para string
    putStrLn $ name ++ " tem " ++ show age ++ " anos e mede " ++ show height
```
<!--ADD_END-->

- O vetor também pode ser decomposto diretamente usando o pattern matching

[](single2.hs)
<!--ADD single2.hs hs-->
```hs
main = do
    [name, age', height'] <- words <$> getLine -- lendo e decompondo já nas variáveis
    
    let age = read age' :: Int                 -- o nome da variável precisa ser diferente
    let height = read height' :: Float         -- utilizando coversão com parâmetro

    putStrLn $ name ++ " tem " ++ show age ++ " anos e mede " ++ show height
```
<!--ADD_END-->

___
## Formatando vetor na saída

- Leia o vetor e imprima nesse formato 

[ 1 2 3 4 5 6 7 ]

### Entrada

<!--ADD formatvet.txt txt-->
```txt
1 2 3 4 5 6 7 8
```
<!--ADD_END-->

### Código
- `intercalete` funciona como o join da maioria das linguagem. Ele recebe um vetor de strings e gera uma string.

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



___
## Leia uma matriz de char

- Leia número de linhas `nl` e número de colunas `nc` na mesma linha. 
- Nas `nl` linhas seguintes, leia os dados da matriz de char.
- Imprima a matriz de saída no mesmo formato da entrada.

### Entrada
<!--ADD mat.txt txt-->
```txt
3 9
####...##
####.....
#.##...##
```
<!--ADD_END-->

### Saída
```txt
####...##
####.....
#.##...##
```
### Código

- `<$>` é o operador equivalente ao `fmap`
- a lista já é atribuida diretamente nos valores `[nl, nc]`
- `replicateM` repete nl vezes o comando de leitura `getline` para montar um vetor de strings
- `mapM_` aplica uma função de impressão em cada elemento do vetor.

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

## Impressão formatada com printf

```hs
import Text.Printf -- importando print

main = do
    value <- readLn :: IO Float
    
    -- imprimindo float com 2 casas decimais
    printf "%.2f\n" (value :: Float)
```