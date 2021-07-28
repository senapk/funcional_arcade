import Debug.Trace ( trace )
import Data.Function ( (&) )

data Car = Car  { pass :: Int
                , maxPass :: Int
                , gas :: Int
                , maxGas :: Int
                , km :: Int
                } deriving (Eq, Show, Read)


data Op = Op { name :: String
             , result :: Bool
             } deriving (Eq, Show, Read)

data Info = Info { car :: Car
                 , op  :: Op
                 } deriving (Eq, Show, Read)


toString :: Info -> [Char]
toString (Info (Car pass maxPass gas maxGas km) (Op name result)) =
                "Car pass: " ++ show pass ++ "/" ++ show maxPass
                 ++ " gas: " ++ show gas  ++ "/" ++ show maxGas
                 ++  " km: " ++ show km
                 ++ " Operation: " ++ name ++ " Result: " ++ show result

resume :: Info -> Info
resume info = trace (toString info) info

-- cria um carro passando maxPass e maxGas - retorna sempre true.
createCar :: Int -> Int -> Info
createCar maxPass maxGas = Info (Car 0 maxPass 0 maxGas 0) (Op "create" True)

-- enche o tanque passando a qtd de gas. Retorna falso apenas se o tanque já estiver completamente cheio.
fuel :: Int -> Info -> Info
fuel qtd (Info (Car p mp g mg km) _) = Info (Car p mp (min (g + qtd) mg) mg km) (Op "fuel" $ g < mg)

-- Faz entrar uma pessoa no carro. Retorna false se já estiver lotado.
embark :: Info -> Info 
embark (Info (Car p mp g mg km) _) = Info (Car newp mp g mg km) (Op "embark" $ p < mp)
                                            where newp = min (p + 1) mp

-- Retira uma pessoa do carro, retorna false se não tiver ninguém no carro
disembark :: Info -> Info
disembark (Info (Car p mp g mg km) _) = Info (Car newp mp g mg km) (Op "disembark" $ p > 0)
                                        where newp = max (p - 1) 0

-- dirige diminuindo a gasolina e aumentando km. 
-- Só é possível dirigir se houver alguém no carro e houver alguma gasolina.
-- Aumenta a km da gasolina gasta.
-- retorna false se não há ninguém no carro ou se não tinha gasolina para completar a viagem.
drive :: Int -> Info -> Info 
drive dist (Info (Car p mp g mg km) _) | p == 0    = Info (Car p mp g mg km) (Op "drive" False)
                                       | otherwise = Info (Car p mp newg mg newkm) (Op "drive"  $ g >= dist)
                                         where  newg = max 0 (g - dist)
                                                newkm  = km  + (g - newg)


-- main = print $ resume . embark . resume. embark . resume $ createCar 2 50
main = do 
    let res = createCar 2 50 
            & resume & embark
            & resume & disembark
            & resume & disembark
            & resume & drive 10
            & resume & embark
            & resume & embark
            & resume & embark
            & resume & drive 10
            & resume & fuel 30
            & resume & fuel 30
            & resume & fuel 30
            & resume & drive 30
            & resume & drive 30
            & resume
    print res 
