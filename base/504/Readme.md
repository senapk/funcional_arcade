## Biblioteca de Listas
[](solver.hs)

```hs
(++) :: [a] -> [a] -> [a] infixr 5

> [1,2] ++ [3,4]
[1,2,3,4]
```

```hs
head :: [a] -> a 
>>> head [1, 2, 3]
1
>>> head [1..]
1
>>> head []
Exception: Prelude.head: empty list
```

```hs
last :: [a] -> a 
>>> last [1, 2, 3]
3
>>> last [1..]
* Hangs forever *
>>> last []
Exception: Prelude.last: empty list
```

```hs
tail :: [a] -> [a] 
>>> tail [1, 2, 3]
[2,3]
>>> tail [1]
[]
>>> tail []
Exception: Prelude.tail: empty list
```

```hs
init :: [a] -> [a] 

>>> init [1, 2, 3]
[1,2]
>>> init [1]
[]
>>> init []
Exception: Prelude.init: empty list
```

```hs
null :: Foldable t => t a -> Bool
>>> null []
True

>>> null [1]
False

```

```hs
length :: Foldable t => t a -> Int
>>> length []
0

>>> length ['a', 'b', 'c']
3
>>> length [1..]
* Hangs forever *
```