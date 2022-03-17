*** Settings ***
Documentation    Exercício 1: Crie uma variável do tipo Dicionário que conterá dados de uma pessoa, com no mínimo 6 informações e imprima no console, uma informação por vez.
...              Exercício 2: Crie uma variável do tipo Lista de 5 frutas e imprima no console, uma por vez.
Library    Collections

*** Variables ***
&{PESSOA}    nome=Denis    
...          sobrenome=Passos
...          idade=36
...          endereco=Rua 47
...          carro=Toyota SW4
...          data_nascimento=01/01/1985

@{FRUTAS}  
...    abacaxi
...    laranja
...    morango
...    banana
...    pera

*** Keywords ***
Somar dois numeros
    [Arguments]    ${NUM_A}    ${NUM_B}   
    ${SOMA}        Evaluate    ${NUM_A}+${NUM_B}
    #Log To Console    ${SOMA}
    [Return]       ${SOMA}

Somar os numeros "${NUM_A}" e "${NUM_B}"  
    ${SOMA}        Evaluate    ${NUM_A}+${NUM_B}
    Log To Console    ${SOMA}
    [Return]       ${SOMA}

*** Test Cases ***
Cenario: Validar soma de dois numeros
    Somar dois numeros    2    3
    ${OUTRASOMA}=    Somar dois numeros    10    20
    Log To Console    ${OUTRASOMA}

Cenario: Somar numeros com argumentos embutidos
    Somar os numeros "20" e "30"

Imprimindo no console as informações da PESSOA
    Log To Console    \n${PESSOA.nome}
    Log To Console    ${PESSOA.sobrenome}
    Log To Console    ${PESSOA.idade}
    Log To Console    ${PESSOA.endereco}
    Log To Console    ${PESSOA.carro}
    Log To Console    ${PESSOA.data_nascimento}


Imprimindo lista de frutas
    [Tags]    FRUTAS
    Log To Console    \n
    Log To Console    ${FRUTAS}[0]
    Log To Console    ${FRUTAS}[1]
    Log To Console    ${FRUTAS}[2]
    Log To Console    ${FRUTAS}[3]
    Log To Console    ${FRUTAS}[4]
    
Imprimindo lista de frutas com loops
    [Tags]    FRUTAS
    Log To Console    \n
    FOR    ${FRUTA}    IN    @{FRUTAS}
        Log To Console    ${FRUTA}
    END