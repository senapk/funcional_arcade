## Sucessores

Leia uma lista é formada de sucessores.

```hs
main = do
    vet <- readLn :: IO [Int]
    print $ fn vet 
```

```hs
sucessores [1,2,3,4,5] ==> True
sucessores [1,2,3,4,5,4] ==> False
```


## IO

```
>>>>>>>> lista vazia
[]
========
True
<<<<<<<<

>>>>>>>> um elemento
[1]
========
True
<<<<<<<<

>>>>>>>> dois elementos
[1,2]
========
True
<<<<<<<<

>>>>>>>> dois elementos iguais
[1,1]
========
False
<<<<<<<<

>>>>>>>>
[2,1]
========
False
<<<<<<<<


>>>>>>>>
[1,2,3,4,3]
========
False
<<<<<<<<

>>>>>>>>
[1,2,3,2,4,5]
========
False
<<<<<<<<

>>>>>>>>
[-1,0,1,2,3]
========
True
<<<<<<<<

```
