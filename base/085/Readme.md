# L2 - {robot} queimada

Receba uma matriz de caracteres de `nl` linhas por `nc` colunas formadas apenas pelos char `.` e `#`.

Os caracteres `.` representam espaços vazios e os char `#` representam árvores. O fogo começa sempre na posição linha 0, coluna 0 e se espalha para as árvores vizinhas apenas nas direções norte, sul, leste, oeste. O fogo não se espalha pelas diagonais. Seu objetivo é imprimir o resultado do campo após a queimada, colocando `o` nas árvores que queimaram.

## Testes

```txt
>>>>>>>>
4 10
####...##.
####......
..##...##.
#.#######.
========
oooo...##.
oooo......
..oo...oo.
#.ooooooo.
<<<<<<<<

>>>>>>>>
4 10
####...##.
#..#......
.......##.
#.#######.
========
oooo...##.
o..o......
.......##.
#.#######.
<<<<<<<<


>>>>>>>>
3 9
####...##
####.....
#.##...##
========
oooo...##
oooo.....
o.oo...##
<<<<<<<<
```

## Entrada

```hs
import Control.Monad (replicateM)

main :: IO ()
main = do
    [nl, nc] <-  map (read :: String -> Int) . words <$> getLine
    mat <- replicateM nl getLine
    mapM_ putStrLn mat 
```