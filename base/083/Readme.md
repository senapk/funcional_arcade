## fraction reduce
[](solver.hs)
Escreva uma função reduce que recebe uma tupla(numerador/denomidador) e devolve a fração após redução.

```hs
reduce (10,2) == (5,1)
reduce (15,6) == (5,2)
reduce (30,12) == (5,2)
reduce (120,48) == (5,2)
reduce (50,100) == (1,2)
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ reduce (a,b)

```
<!--MAIN_END-->

```
>>>>>>>>
10
2
========
(5,1)
<<<<<<<<

>>>>>>>>
120
48
========
(5,2)
<<<<<<<<
```
