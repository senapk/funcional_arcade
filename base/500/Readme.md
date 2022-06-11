# Inputs em Haskell
[](solver.hs)


[](toc)
- [Lendo variáveis.](#lendo-variáveis)
- [Manipulando Strings](#manipulando-strings)
- [Lendo de várias linhas seguidas](#lendo-de-várias-linhas-seguidas)
- [Lendo vetor na mesma linha](#lendo-vetor-na-mesma-linha)
- [Fazendo Cast](#fazendo-cast)
- [Vetor](#vetor)
- [Matriz](#matriz)
- [Printf](#printf)
- [Processando comandos](#processando-comandos)
[](toc)

___
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

Se a variável estiver sozinha na linha e formatada de acordo com o padrão do haskell é possível lê-la assim:

- `readLn :: IO TIPO` -- lê uma linha e tenta converter para esse tipo
    - só funciona se o tipo estiver escrito no formato padrão do haskell
    - por exemplo `(x,y,z)` para tuplas ou `[1,2,3,4]` para vetores
    - respeitando a escrita, você pode ler facilmente qualquer tipo.
- print - imprime esse tipo no seu formato padrão.
    - strings vão sair entre aspas

[](save)[](00_alone.hs)
```hs
main = do
    i <- readLn :: IO Int    -- pega um inteiro
    f <- readLn :: IO Float  -- pega um float
    (l, c) <- readLn :: IO (Int, Float) -- pega dois inteiros
    listaInt <- readLn :: IO [Int] -- pega uma lista de inteiros
    listaTup <- readLn :: IO [(String, String)]
    print i
    print f
    print (l, c)
    print listaInt
    print listaTup
```
[](save)


___
## Manipulando Strings

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

[](save)[](01_str.hs)
```hs
main = do
    line <- getLine
    value <- readLn :: IO Int
    putStrLn $ line ++ " " ++ show value
```
[](save)

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

[](save)[](02_veclines.hs)
```hs
import Control.Monad (replicateM)

main = do
    size <- readLn :: IO Int
    vet <- replicateM size (readLn :: IO Int)
    print vet
```
[](save)

___
## Lendo vetor na mesma linha
Leia vários inteiros na mesma linha e transforme-os em um vetor de inteiros.

```txt
>>>>>>>>
1 2 3 4 5 6 7 8 9 0
========
[1,2,3,4,5,6,7,8,9,0]
<<<<<<<<
```

- Você pode ler com `getLine`, quebrar em vetor de palavras com `words` e converter para vetor de inteiros.

[](save)[](03_many1.hs)
```hs
main :: IO ()
main = do
    line <- getLine -- lendo a linha
    -- (words line) gera um vetor de palavras
    -- map (read :: String -> Int) converte para vetor de inteiros
    let xs = map (read::String -> Int) . words $ line
    print xs
```
[](save)

- Uma forma de fazer a leitura, decomposição em palavras e transformação em inteiro na mesma linha é através do
`fmap`. O `fmap` é capaz de aplicar uma função dentro de um monad. Ele também pode ser utilizado através do
operador `<$>`.
- Nesse caso, as duas linhas são equivalentes.
    - `xs <- fmap (map (read :: String->Int) . words)    getLine`
    - `xs <-       map (read :: String->Int) . words <$> getLine`

[](save)[](03_many2.hs)
```hs
-- fmap é capaz de aplicar uma função ao getline diretamente
main :: IO ()
main = do
    xs <- fmap (map (read :: String->Int) . words) getLine
    print xs
```
[](save)

[](save)[](03_many3.hs)
```hs
main :: IO ()
main = do
    xs <- map (read :: String->Int) . words <$> getLine
    print xs
```
[](save)

Ou ainda criando a função auxiliar `int`

[](save)[](03_many4.hs)
```hs
int v = read v :: Int

main :: IO ()
main = do
    xs <- map int . words <$> getLine
    print xs
```
[](save)


___
## Fazendo Cast

Leia uma palavra, um inteiro e um float na mesma linha.

```txt
>>>>>>>>
david 17 1.75
========
david tem 17 anos e mede 1.75
<<<<<<<<
```

- A função `read :: String -> TipoSaída` pode ser utilizada para converter de string para um tipo qualquer
- Ela também pode ser utilizada como `read value :: TipoSaída`, omitindo assim o tipo de entrada.


[](save)[](04_single1.hs)
```hs
main = do
    xs <- words <$> getLine -- lendo a linha e quebrando num vetor de palavras
    
    let name = head xs  
    let age = (read :: String -> Int) (xs !! 1) -- utilizando a função com descrição completa
    let height = read (xs !! 2) :: Float        -- utilizando a função com parâmetro

    -- utilizando a função show para converter age e height para string
    putStrLn $ name ++ " tem " ++ show age ++ " anos e mede " ++ show height
```
[](save)

- O vetor também pode ser decomposto diretamente usando o pattern matching

[](save)[](04_single2.hs)
```hs
main = do
    [name, age', height'] <- words <$> getLine -- lendo e decompondo já nas variáveis
    
    let age = (read :: String -> Int) (age') -- utilizando a função com descrição completa
    let height = read (height') :: Float        -- utilizando a função com parâmetro

    putStrLn $ name ++ " tem " ++ show age ++ " anos e mede " ++ show height
```
[](save)

___
## Vetor

Leia o vetor e imprima nesse formato.

```txt
>>>>>>>>
1 2 3 4 5 6 7 8
========
[ 1 2 3 4 5 6 7 8 ]
<<<<<<<<
```

- `intercalete` funciona como o `join` da maioria das linguagem. Ele recebe um vetor de strings e um char separador e gera uma string.

[](save)[](05_formatvet.hs)
```hs
import Data.List ( intercalate )

main = do
    vetInt <- fmap (map (read :: String -> Int) . words) getLine
    let vetStr = map show vetInt -- transformando em string
    putStrLn $ "[ " ++ intercalate " " vetStr ++ " ]"
```
[](save)

___
## Matriz

- Leia número de linhas `nl` e número de colunas `nc` na mesma linha. 
- Nas `nl` linhas seguintes, leia os dados da matriz de char.
- Imprima a matriz de saída no mesmo formato da entrada.

```txt
>>>>>>>>
3 9
####...##
####.....
#.##...##
========
####...##
####.....
#.##...##
<<<<<<<<
```

- `<$>` é o operador equivalente ao `fmap`
- a lista já é atribuida diretamente nos valores `[nl, nc]`
- `replicateM` repete nl vezes o comando de leitura `getline` para montar um vetor de strings


[](save)[](06_mat.hs)
```hs
import Control.Monad (replicateM)
import Data.List ( intercalate )

main :: IO ()
main = do
    [nl, nc] <-  map (read :: String -> Int) . words <$> getLine
    mat <- replicateM nl getLine
    putStrLn $ intercalate "\n" mat
```
[](save)


## Printf

- Leia um float e imprima com duas casas decimais.
- Leia hora e minuto e imprima no formato hh:mm

```txt
>>>>>>>>
45.6723
3 41
========
45.67
03:41
<<<<<<<<
```

- A função printf pode ser importada de Text.Printf e atua como o print, mas utilizando o formato do 

[](save)[](07_printf.hs)
```hs
import Text.Printf ( printf ) -- importando print

main = do
    value <- readLn :: IO Float
    [hora, minuto] <- map (read :: String -> Int) . words <$> getLine
    -- imprimindo float com 2 casas decimais
    printf "%.2f\n" (value :: Float)
    printf "%02d:%02d\n" (hora :: Int) (minuto :: Int)
```
[](save)


___
## Processando comandos

Leia e processe vários comandos, um por linha até chegar no `end`.

Os comandos podem ser
- sum x y -> imprime a soma de dois inteiros x e y
- half x -> imprime o valor float x dividido por 2 com duas casas decimais
- end -> finaliza o loop

```txt
>>>>>>>>
sum 4 5
half 6.0
sum 8 9
half 7.0
half 3.5
end
========
9
3.00
17
3.50
1.75
<<<<<<<<
```


[](save)[](08_cmd.hs)
```hs
import Data.List ( intercalate ) 
import Text.Printf ( printf )

process :: String -> String
process line
    | cmd == "sum" = show $ int a + int b
    | cmd == "half" = fmt2 $ float a / 2
    | otherwise = "comando invalido"
    where 
        xs = words line
        cmd = head xs
        int   value = read value :: Int
        float value = read value :: Float
        fmt2   value = printf "%.2f" value :: String
        a = xs !! 1
        b = xs !! 2

main :: IO ()
main = do
    line_list <- takeWhile (/="end") . lines <$> getContents
    putStrLn $ intercalate "\n" . map process $ line_list
```
[](save)