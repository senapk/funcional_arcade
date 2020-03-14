## Verifique se a lista está ordenada

Leia uma lista e verifique se está ordenada

```hs
main = do
    vet <- readLn :: IO [Int]
    print $ fn vet 
```

```hs
estaOrdenada [1,2,3,4,5] ==> True
estaOrdenada [1,2,3,4,5,4] ==> False
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
True
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
[1,1,0,2,3,4,3]
========
False
<<<<<<<<

>>>>>>>>
[-1,-1,0,2,3,4,6]
========
True
<<<<<<<<

```
