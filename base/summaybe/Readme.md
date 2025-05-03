# Soma de vários maybe

[](solver.hs)

Implemente a função somaMaybe que soma duas variáveis `Maybe[Int]`.

```hs
somaMaybe Just(5) Just(7) == Just(12)
somaMaybe Just(5) Nothing == Just(5)
somaMaybe Nothing Just(3) == Just(3)
somaMaybe Nothing Nothing == Nothing
```

## Testes

```txt
>>>>>>>>
Just(5)
Just(7)
========
Just(12)
<<<<<<<<

>>>>>>>>
Just(5)
Nothing
========
Just(5)
<<<<<<<<

>>>>>>>>
Nothing
Just(3)
========
Just(3)
<<<<<<<<

>>>>>>>>
Nothing
Nothing
========
Nothing
<<<<<<<<

```
