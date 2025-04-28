# Métodos de string

```hs
> intersperse ',' "abcde"
"a,b,c,d,e"

> intercalate

> words "hoje estou com fome"

> lines "hoje\nestou\ncom\nfome"

> splitOn "x" "axbxc"
["a","b","c"]

> splitOn "x" "axbxcx"
["a","b","c",""]

> endBy ";" "foo;bar;baz;"
["foo","bar","baz"]

> splitWhen (<0) [1,3,-4,5,7,-9,0,2]
[[1,3],[5,7],[0,2]]

> splitOneOf ";.," "foo,bar;baz.glurk"
["foo","bar","baz","glurk"]

> chunksOf 3 ['a'..'z']
["abc","def","ghi","jkl","mno","pqr","stu","vwx","yz"]

```
