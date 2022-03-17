*** Settings ***
Documentation    Exercício 1: Crie uma keyword que cria um e-mail formado por nome_sobrenome_idade@robot.com,
...    onde o nome, o sobrenome e a idade são recebidos via passagem de argumentos e, ao final, a keyword
...    deve retornar esse email formatado. Imprima o e-mail retornado no console.
...    Exercício 2: Crie uma keyword que imprima no console a frase "Estou no número: \${numero}" de 0 a 10.
...    Exercício 3: Crie uma keyword que imprima no console 5 nomes de países.

Library    String

*** Keywords ***
Criar robotmail
    [Arguments]         ${NOME}    ${SOBRENOME}    ${IDADE}    ${DOMINIO}=@robot.com   
    ${ROBOTMAIL}        Catenate    SEPARATOR=_    ${NOME}    ${SOBRENOME}    ${IDADE}    ${DOMINIO}
    ${ROBOTMAIL}        Convert To Lower Case    ${ROBOTMAIL}
    #Log To Console     ${ROBOTMAIL}
    [Return]            \n${ROBOTMAIL}

Imprimindo em qual numero estou
    FOR    ${counter}     IN RANGE    0    11
        Log To Console    Estou no número: ${counter}
    END

Imprimindo lista de paises
    [Arguments]         @{PAISES}
    Log To Console    \n
    FOR    ${PAIS}    IN    @{PAISES}
        Log To Console    Eu já viajei para: ${PAIS}
    END

*** Test Cases ***
Cenario: Validar criacao de email
    #Criar robotmail     DENIS    PASSOS    36
    ${RESULTADO}        Criar robotmail    DENIS    PASSOS    36
    Log To Console      ${RESULTADO}

Cenario: Imprimir de 0 a 10
    Imprimindo em qual numero estou

Cenario: Imprimir paises que visitei
    Imprimindo lista de paises    Suiça    Itália    Irlanda
        