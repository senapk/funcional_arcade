soma n = sum [1..n]
line n = [soma (n - 1) + 1 .. soma n]
triangle n = [line m | m <- [1..n]]