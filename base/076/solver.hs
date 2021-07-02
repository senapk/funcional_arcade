import Data.List
gerador5 num = unfoldr fn num
    where
        fn 0 = Nothing 
        fn x = Just (x, x `div` 2)

digitos num = reverse $ unfoldr fn num
    where
        fn 0 = Nothing 
        fn x = Just (x `mod` 10, x `div` 10)