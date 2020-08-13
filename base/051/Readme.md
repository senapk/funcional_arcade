## paridade
[](solver.hs)
```hs
--IN :  Lista u de valores booleanos
--OUT: Se o total de Trues é ímpar então retorne True e do contrário False
paridade [] == False
paridade [True,True,False] == False
paridade [True,False,True,False,True] == True
paridade [False,True,False] == True
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Bool]
    print $ paridade a

```
<!--MAIN_END-->
