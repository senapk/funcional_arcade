# Carro & Controla a quantidade de pessoas e sai para passear

<!--TOC_BEGIN-->
- [Requisitos](#requisitos)
- [Shell](#shell)
<!--TOC_END-->

Essa atividade se propõe a implementar um carro ecológico que pode passear pela cidade. Ele deve poder embarcar e desembarcar pessoas, colocar combustível e andar.


## Requisitos
Seu sistema deverá:

- Inicializar.
    - Iniciar o carro com todos os atributos zero.
    - Inicializar passando o máximo de passageiros e o máximo de gasolina.
- Entrando e Saindo.
    - Embarcar uma pessoa por vez.
    - Desembarcar uma pessoa por vez.
        - Não embarque além do limite ou desembarque se não houver ninguém no carro.
- Abastecer.
    - Abastecer o tanque passando a quantidade de litros de combustível.
        - Caso tente abastecer acima do limite, descarte o valor que passou.
- Dirigir.
    - Caso haja pelo menos uma pessoa no carro e **algum combustível**, ele deve gastar combustível andando e aumentar a quilometragem.
    - Nosso carro faz um kilômetro por litro de água.
    - Caso não exista combustível suficiente para completar a viagem inteira, dirija o que for possível e emita uma mensagem indicando quanto foi percorrido.


***
## Shell

```bash
#__case inicializar
# O comando "$enter" insere uma pessoa no carro.
# O comando "$leave" retira uma pessoa do carro".
# O comando "$show" mostra o estado do carro.
# Deve ser emitido um erro caso não seja possível inserir ou retirar uma pessoa.
$show
pass: 0/0 gas: 0/0 km: 0
$init 2 100
$show
pass: 0/2 gas: 0/100 km: 0

#__case entrar
$enter
$enter
$show
pass: 2/2 gas: 0/100 km: 0
$enter
warning: carro lotado
$show
pass: 2/2 gas: 0/100 km: 0
$leave
$leave
$leave
warning: carro vazio
$show
pass: 0/2 gas: 0/100 km: 0
$end
```

```bash
#__case abastecer
$init 2 100
$fuel 60
$show
pass: 0/2 gas: 60/100 km: 0

#__case dirigir vazio
$drive 10
warning: carro vazio

#__case dirigir
$enter
$drive 10
$show
pass: 1/2 gas: 50/100 km: 10

#__case para longe
$drive 70
warning: carro parou apos 50 km
$drive 10
warning: tanque vazio
$show
pass: 1/2 gas: 0/100 km: 60

#__case enchendo o tanque
$fuel 200
warning: sobrou 100 de combustivel
$show
pass: 1/2 gas: 100/100 km: 60
$end
#__end__
```

<!--ADD student.hs hs-->
```hs

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
    putStrLn $ join "\n" . processAll . takeWhile (/="end") . lines $ action_list
    putStrLn "$end"
```
<!--ADD_END-->