# Armário -  Either, Map

Uma escola de ensino médio tem armários para que os estudantes tenham algum lugar para pôr os seus pôsteres do Guns'n'Roses. Cada armário tem uma combinação de código. Quando um estudante quer um novo armário, ele irá falar para o supervisor dos armários o número do armário que ele quer e então o supervisor lhe dará um código. Entretanto, se alguém já estiver usando o armário, ele não poderá dizer o código do armário e terá que pegar um diferente. Nós iremos usar um mapa a partir de Data.Map para representar os armários. Ele vai mapear a partir dos números dos armários para um par de armários que estão em uso ou não e os códigos dos armários.

Você pode conferir a descrição completa do problema base em [LINK](http://haskell.tailorfontela.com.br/making-our-own-types-and-typeclasses#type-synonyms).

Utilize o código abaixo [student.hs](student.hs). Você deve implentar onde existem os ... Já existem alguns casos de teste na main, como também a saída esperada.

## Shell

```sh
#__case init
$create 100 banana
$create 101 goiaba
$create 102 sapoti
$show
100 Free banana
101 Free goiaba
102 Free sapoti

#__case criar ja existindo
$create 101 murici
warning: locker 101 ja existe
$show
100 Free banana
101 Free goiaba
102 Free sapoti
$end
```

```sh
#__case init
$create 100 banana
$create 101 goiaba
$create 102 sapoti
$take 101
seu codigo de acesso eh goiaba
$take 102
seu codigo de acesso eh sapoti
$show
100 Free banana
101 Used goiaba
102 Used sapoti
#__case erros de alocacao
$take 104
warning: locker 104 nao existe
$take 101
warning: locker 101 ja esta em uso
$show
100 Free banana
101 Used goiaba
102 Used sapoti
$end
```

```sh
#__case init
$create 100 banana
$create 101 goiaba
$create 102 sapoti
$take 100
seu codigo de acesso eh banana
$take 102
seu codigo de acesso eh sapoti
$show
100 Used banana
101 Free goiaba
102 Used sapoti
$return 102 sapoti
$show
100 Used banana
101 Free goiaba
102 Free sapoti
#__case erros
$return 100 acerola
warning: codigo de acesso invalido
$return 102 sapoti
warning: locker 102 nao esta em uso
$return 104 goiaba
warning: locker 104 nao existe
$show
100 Used banana
101 Free goiaba
102 Free sapoti
$end
```
