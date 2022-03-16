# Prime Hero Academy - Módulo 2: Introdução a Automação de testes com Robot Framework

## Robot Framework - Comandos de Execução

### Roda todas as suítes contidas dentro do meuDiretorioDeTestes 
    robot meuDiretorioDeTestes

### Roda apenas a suíte meusTestes 
    robot meusTestes.robot

### Roda somente o teste chamado "Cenário 01: Pesquisar Produtos" da suíte meusTestes 
    robot -t "Cenário 01: Pesquisar Produtos" meusTestes.robot

### Roda somente os testes que tiverem a TAG "smoke tests" da suíte meusTestes 
    robot -i "smoke tests" meusTestes.robot

### Roda a suíte meusTestes porém trocando o valor da variável BROWSER 
    robot -v BROWSER:ie meusTestes.robot

### Roda a suíte meusTestes em modo de LOG LEVEL = TRACE (INFO, DEBUG) 
    robot -L trace meusTestes.robot

### Digite esse comando para ver todos os possíveis parâmetros de execução e a explicação de cada um.
    robot --help

<br>

## Robot Framework - Variáves

### Simples

    ${NOME}  Maria

### Dicionários
    &{PESSOA}  nome=João  sobrenome=Silva  idade=15

### Listas
    @{FRUTAS}  abacaxi  laranja  morango  banana