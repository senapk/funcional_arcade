import qualified Data.Map as Map
import qualified Data.Maybe as Maybe
import Data.Either

data State = Used | Free deriving (Show, Eq)
type Code = String
type Locker = (State, Code)  -- uma única porta
type Index = Int
type Cabinet = Map.Map Index Locker  -- O móvel com todas as portas

type Action = String
type Output = String
type Error = String
type Result = Either Output Error


-- Junta um vetor de textos usando \n
join :: [String] -> String
join = foldl1 (\a b -> a ++ "\n" ++ b)

-- permite a composição ao contrário
(&) :: t1 -> (t1 -> t2) -> t2
(&) x f = f x

emptyCabinet :: Cabinet
emptyCabinet = Map.empty

-- cria um armário se ele ainda nao existir
createLocker :: Cabinet -> Index -> Code -> (Cabinet, Result)
createLocker cabinet index code
    | Map.lookup index cabinet & Maybe.isJust = (cabinet, Right $ "locker " ++ show index ++ " ja existe")
    | otherwise = (Map.insert index (Free, code) cabinet, Left "")

-- transforma de cabinet para string
strCabinet :: Cabinet -> String
strCabinet cabinet = Map.assocs cabinet & map showLocker & join
    where showLocker (index, (state, code)) = show index ++ " " ++ show state ++ " " ++ code

process :: (Cabinet, Result) -> Action -> (Cabinet, Result)
process (cabinet, _) line
    | cmd == "show" = (cabinet, Left $ strCabinet cabinet)
    | cmd == "create" = createLocker cabinet (intArg 1) (args !! 2)
    | cmd == "take" = takeLocker cabinet $ intArg 1
    | cmd == "return" = returnLocker cabinet  (intArg 1) (args !! 2)
    | otherwise = (cabinet, Right "comando invalido")
    where
        args = words line
        cmd = head args
        intArg index = read (args !! index) :: Int


processAll :: [Action] -> [String]
processAll action_list = scanl process (emptyCabinet, Left "") action_list 
                        & tail                                    -- exclui o primeiro
                        & fmap snd                                -- pega apenas as mensagens
                        & zipWith composeMsg action_list          -- junta as mensagens com os comandos
            where composeMsg action message = case message of
                        (Left output) -> "$" ++ action ++ (if output == "" then "" else "\n" ++ output)
                        (Right error) -> "$" ++ action ++ "\nwarning: " ++ error

main :: IO ()
main = do
    action_list <- getContents -- texto com os comandos a serem processados
    action_list & lines & takeWhile (/="end") & processAll & join & putStrLn
    putStrLn "$end"
