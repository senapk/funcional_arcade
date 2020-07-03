soma_ultimos_2 = sum . reverse . take 2 . reverse

vetFib 0 = []
vetFib 1 = [0]
vetFib 2 = [0,1]
vetFib n = prefix ++ [soma_ultimos_2 prefix] -- vetor com n - 1 elemento ++ [ultimo e penultimo desse vetor]
    where prefix = vetFib (n - 1) -- vetor com n - 1 elemento