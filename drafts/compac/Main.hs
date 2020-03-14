-- faz a entrada passando valor e qtd
entry x qtd = if qtd == 1 then [[x]] else [[x, qtd]]

-- se lista vazia, entao nao tem elementos
fn [] _ = []
-- se esse eh o ultimo elemento, insiro quantos ja encontrei mais ele
fn [x] qtd = entry x (qtd + 1)
-- se x eh diferente do proximo
--   insiro quantos ja encontrei mais ele e chamo a recursao zerando o contador
--   senao chamo a recusao dizendo que encontrei mais um
fn (x:y:xs) qtd = if x /= y
                    then entry x (qtd + 1) ++ fn (y:xs) 0
                    else                      fn (y:xs) (qtd + 1)

-- inicio a busca com zero
compac xs = fn xs 0

main = do
    vet <- readLn :: IO [Int]
    print $ compac vet
