import Data.List
import Data.Maybe

--encontrar lista elems = [ (v, p) |(v, Just p) <- [(x, elemIndex x lista) | x <- elems]]

encontrar lista elems = [(x, p) | x <- elems, let r = elemIndex x lista, let p = fromJust r, isJust r]

-- "siriguela" "aeiou" [1,3,5,-1, 3]

-- [(c, p)]