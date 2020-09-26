import Data.List (inits, tails, maximumBy)
import Data.Ord (comparing)
 
subseqs :: [a] -> [[a]]
subseqs = concatMap inits . tails
 
maxsubseq :: (Ord a, Num a) => [a] -> [a]
maxsubseq = maximumBy (comparing sum) . subseqs