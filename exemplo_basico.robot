*** Settings ***
Suite Setup     Avisar que comecou uma nova suite
Suite Teardown  Avisar que concluiu a nova suite
Test Setup      Avisar que comecou um novo teste
Test Teardown   Avisar que concluiu o nova suite

*** Test Cases ***
Cenario 1 - Logar no console o numero do Cenario
    Logar no console  1

Cenario 2 - Logar no console o numero do Cenario
    Logar no console  2

*** Keywords ***
Logar no console
    [Arguments]  ${NUMBER}
    Log To Console    ${NUMBER}

Avisar que comecou uma nova suite
    Log to console  Comecou a executar suite de testes

Avisar que concluiu a nova suite
    Log to console  Concluiu a execucao da suite de testes

Avisar que comecou um novo teste
    Log to console  Comecou a execucao do teste

Avisar que concluiu o nova suite
    Log to console  Concluiu a execucao do teste