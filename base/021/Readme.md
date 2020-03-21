## 12. `concat`
```hs
--IN : Duas listas a e b
--OUT: Concatenação entre a e b
concat [] [] == []
concat [] [3,4] == [3,4]
concat [1,2] [] == [1,2]
concat [1,2] [3,4] == [1,2,3,4]
concat [1,2,3] [3,4] == [1,2,3,3,4]
```
