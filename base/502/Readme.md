## Listas Infinitas


- LINK: [https://hackage.haskell.org/package/base-4.15.0.0/docs/Data-List.html#g:8](https://hackage.haskell.org/package/base-4.15.0.0/docs/Data-List.html#g:8)

Essas funções são geradoras de listas infinitas:

### `iterate :: (a -> a) -> a -> [a]`

iterate f x returns an infinite list of repeated applications of f to x:

```
iterate f x == [x, f x, f (f x), ...]

>>> iterate not True
[True,False,True,False...

>>> iterate (+3) 42
[42,45,48,51,54,57,60,63...
```


### `repeat :: a -> [a]`

`repeat x` is an infinite list, with x the value of every element.

```
>>> repeat 17
[17,17,17,17,17,17,17,17,17...
```


### `replicate :: Int -> a -> [a]`

`replicate n x` is a list of length n with x the value of every element. It is an instance of the more general genericReplicate, in which n may be of any integral type.

```
>>> replicate 0 True
[]
>>> replicate (-1) True
[]
>>> replicate 4 True
[True,True,True,True]
```


### `cycle :: [a] -> [a]`

`cycle` ties a finite list into a circular one, or equivalently, the infinite repetition of the original list. It is the identity on infinite lists.

```
>>> cycle []
Exception: Prelude.cycle: empty list
>>> cycle [42]
[42,42,42,42,42,42,42,42,42,42...
>>> cycle [2, 5, 7]
[2,5,7,2,5,7,2,5,7,2,5,7...
```


## Funções úteis para lidar com listas e fazer cálculos sem recursão

- Unfold : [LINK](https://kseo.github.io/posts/2016-12-12-unfold-and-fold.html)

```hs
>>> unfoldr (\b -> if b == 0 then Nothing else Just (b, b-1)) 10
[10,9,8,7,6,5,4,3,2,1]
```

Pega uma semeste e gera uma lista a partir da semente. 

Para implementar, definimos uma função que gera a interação usando o `Just` e o Ponto de parada com o `Nothing`.

O primeiro elemento da tupla é o que fica, o segundo é o que vai pra próxima interação.
```hs
unfoldr :: (b -> Maybe (a, b)) -> (b -> [a])
unfoldr f b = case f b of
                Just (a, b') -> a : unfoldr f b'
                Nothing -> []
```

- takeWhile

```
takeWhile :: (a -> Bool) -> [a] -> [a]Source#

>>> takeWhile (< 3) [1,2,3,4,1,2,3,4]
[1,2]
>>> takeWhile (< 9) [1,2,3]
[1,2,3]
>>> takeWhile (< 0) [1,2,3]
[]

```
