vetFib 0 = []
vetFib 1 = [0]
vetFib 2 = [0,1]
vetFib n = prefix ++ [(prefix !! (n - 2)) + (prefix !! (n - 3))]
    where prefix = vetFib (n - 1)