
data Car = Car  { pass :: Int
                , maxPass :: Int
                , gas :: Int
                , maxGas :: Int
                , km :: Int
                } deriving (Eq, Show, Read)

type Action = String
type Output = String
type Error = String
type Result = Either Output Error

int :: String -> Int
int   value = read value :: Int

float :: String -> Float
float value = read value :: Float

emptyCar :: Car
emptyCar = Car 0 0 0 0 0

createCar :: Int -> Int -> Car
createCar maxPass maxGas = Car 0 maxPass 0 maxGas 0

str :: Car -> [Char]
str (Car pass maxPass gas maxGas km) =
                "pass: " ++ show pass ++ "/" ++ show maxPass
                 ++ " gas: " ++ show gas  ++ "/" ++ show maxGas
                 ++  " km: " ++ show km


process :: (Car, Result) -> Action -> (Car, Result)
process (car, _) line
    | cmd == "init" = (createCar (intArg 1) (intArg 2), Left "")
    | cmd == "show" = (car, Left $ str car) 
    | otherwise = (car, Right "comando invalido")
    where
        args = words line
        cmd = head args
        intArg index = int (args !! index)

filterErrors :: Action -> Result -> String
filterErrors action (Left output) = "$" ++ action ++ (if output == "" then "" else "\n" ++ output)
filterErrors action (Right error) = "$" ++ action ++ "\nwarning: " ++ error


processAll :: [Action] -> [String]
processAll action_list = messages
    where   actions = tail $ scanl process (emptyCar, Left "") action_list    -- [(Car, Result)]
            results = map snd actions                                         -- [Result]
            messages = zipWith filterErrors action_list results               -- desempacota Right e Left

join :: String -> [String] -> String
join del xs = if null xs then "" else foldl1 (\a b -> a ++ del ++ b) xs

main :: IO ()
main = do
    action_list <- getContents -- texto com os comandos a serem processados
    putStrLn . join "\n" . processAll . takeWhile (/="end") . lines $ action_list
    putStrLn "$end"
