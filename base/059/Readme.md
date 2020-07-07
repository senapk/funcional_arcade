## 09. `listacc`
```hs
--IN : Lista u de inteiros
--OUT: Versão v acumulativa de u. Na versão
--acumulativa a k-ésima chave, vk é determinada
--somando-se as todas as chaves de u até a posição k.
listacc [] == []
listacc [1] == [1]
listacc [1,3,4] == [1,4,8]
listacc [4,3,1,1] == [4,7,8,9]
listacc [1,2,3,4] == [1,3,6,10]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
    print $ listacc a

```
<!--MAIN_END-->
