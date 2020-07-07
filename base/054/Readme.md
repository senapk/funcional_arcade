## 04. `swap`
```hs
--IN : Lista u de tipo arbitrário e dois inteiros p e
--q que representam posições de elementos de u.
--OUT: Versão de u com os elementos das posições p e q trocados
swap [] 0 5 == []
swap [1] 0 3 == [1]
swap [1,3,4] 1 2 == [1,4,3]
swap [1,2,3,4,5,6] 2 5 == [1,2,6,4,5,3]
swap [5,6,7,8,9] 0 3 == [8,6,7,5,9]
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO [Int]
	b <- readLn :: IO Int
	c <- readLn :: IO Int
    print $ swap a b c

```
<!--MAIN_END-->
