## buscabin
[](solver.hs)
```hs
--IN : Lista u de chaves ordenadas ascendentemente e valor x de mesmo tipo base de u
--OUT: Posição de u onde se encontra x ou -1 se x não estiver em u. A busca deve ser binária.
buscaBin [] 4 == -1
buscaBin [1] 3 == -1
buscaBin [1,3,4] 4 == 2
buscaBin [1,3,4] 3 == 1
buscaBin [1,3,5,6,8] 5 == 2
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    print $ buscaBin a b

```
<!--MAIN_END-->
