*** Settings ***
Documentation    Exercício 1: Crie uma variável do tipo Dicionário que conterá dados de uma pessoa, com no mínimo 6 informações e imprima no console, uma informação por vez.
...              Exercício 2: Crie uma variável do tipo Lista de 5 frutas e imprima no console, uma por vez.

*** Variables ***
&{PESSOA}    nome=Denis    
...          sobrenome=Passos
...          idade=36
...          endereco=Rua 47
...          carro=Toyota SW4
...          data_nascimento=01/01/1985

@{FRUTAS}  abacaxi  laranja  morango  banana    pera

*** Test Cases ***
Imprimindo no console as informações da PESSOA
    Log To Console    \n${PESSOA.nome}
    Log To Console    ${PESSOA.sobrenome}
    Log To Console    ${PESSOA.idade}
    Log To Console    ${PESSOA.endereco}
    Log To Console    ${PESSOA.carro}
    Log To Console    ${PESSOA.data_nascimento}


Imprimindo lista de frutas
    Log To Console    \n
    FOR    ${fruta}    IN    @{FRUTAS}
        Log To Console    ${fruta}
    END