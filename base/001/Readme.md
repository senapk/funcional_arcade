## max3
[](solver.hs)


Defina a função `max3` tal que `max3 x y z` é o máximo entre x, y e z. Por exemplo,

```hs
max3 6 2 4 == 6
max3 6 7 4 == 7
max3 6 7 9 == 9
max3 5 2 5 == 5
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ max3 a b c

```
<!--MAIN_END-->
