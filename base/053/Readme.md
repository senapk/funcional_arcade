## 03. `deletee`
```hs
--IN : Valor x e lista u
--OUT: Versão de u com a primeira aparição de x
removida.
deletee 5 [] == []
deletee 1 [1] == []
deletee 4 [1,3,4] == [1,3]
deletee 3 [4,3,1,3] == [4,1,3]
deletee 5 [1,5,6,9] == [1,6,9]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
	b <- readLn :: IO [Int]
    print $ deletee a b

```
<!--MAIN_END-->
