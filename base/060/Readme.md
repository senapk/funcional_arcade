## maxsseq
[](solver.hs)
```hs
--IN : Lista u de inteiros (podem ser positivos, negativos ou zero)
--OUT:  Sublista de u de elementos consecutivos cuja soma é máxima
maxsseq [] == []
maxsseq [1,3,-5,1,2,-2] == [1,3]
maxsseq [2,3,-1,2,-3,2] == [2,3,-1,2]
maxsseq [4,3,1] == [4,3,1]
maxsseq [2,1,-4,9,7,-1,5] == [9,7,-1,5]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ maxsseq a

```
<!--MAIN_END-->
