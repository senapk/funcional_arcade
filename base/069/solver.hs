import Data.List
import Data.Maybe







redux :: Num p => Maybe p -> p
redux Nothing = -1
redux (Just x) = x

convert' :: Num p => Maybe p -> p
convert' r = case r of
            Nothing -> -1
            Just value -> value

convert :: Num p => Maybe p -> p
convert r = case r of
            Nothing -> -1
            Just value -> value


-- criando a função dentro
indexOf :: Eq a => a -> [a] -> Int
indexOf x xs = convert $ elemIndex x xs
    where convert r = case r of
            Nothing -> -1
            Just value -> value


-- usando a fromMaybe
indexOf' :: Eq a => a -> [a] -> Int
indexOf' x xs = fromMaybe (-1) (elemIndex x xs)


-- Usando o pattern matching nas guardas
indexOf'' :: Eq a => a -> [a] -> Int
indexOf'' x xs 
        | Just z <- elemIndex x xs = z
        | otherwise = -1


-- Criando a própria fromMaybe inline
indexOf''' x xs = (\a -> case a of { Just x -> x; _ -> -1}) $ elemIndex x xs


-- {-# LANGUAGE LambdaCase #-}
--indexOf'''' x xs = (\case {Just x -> x; _ -> -1}) $ elemIndex x xs


-- dados duas listas, retornar quais elementos da primeira lista aparecem em posições pares na segunda lista
-- Use o elemIndex para guardar as posições e processe os Nothings
posPares xs ys = [v | (v, Just index)<- map(\y -> (y, elemIndex y ys)) xs, odd index]

-- catMaybes' :: [Maybe a] -> [a]
-- catMaybes' [] = []
-- catMaybes' (x:xs) = case x of
--                         Just v -> v:catMaybes' xs
--                         Nothing -> catMaybes' xs

catMaybes' :: [Maybe a] -> [a]
catMaybes' [] = []
catMaybes' (x:xs) | Just v <- x = v:catMaybes' xs
                  | otherwise = catMaybes' xs


-- quantos elementos impares existe entre o começo da lista e x
-- 

--contarImparesAntes x xs = maybe 0 (\y -> length [z | z <- (take y), odd z]) elemIndex x xs