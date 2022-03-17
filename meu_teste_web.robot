*** Settings ***
Documentation  Suite de apresentaçao do Robot Framework
...  com uma busca simples no Google
...  para o blog da Concrete.

Library  SeleniumLibrary

*** Variables ***

${BROWSER}    chrome
${URL}                  http://demo.automationtesting.in
${INPUT_EMAIL}          id=email
${BOTAO_SKIPSIGNIN}     id=btn2


*** Test Cases ***
Validar acesso ao site
    Acessar site

*** Keywords ***
Acessar site
    Open Browser                    ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible   ${INPUT_EMAIL}
    Input Text                      ${INPUT_EMAIL}    fulano@mail.com
    Wait Until Element Is Visible   ${BOTAO_SKIPSIGNIN}
    Click Button                    ${BOTAO_SKIPSIGNIN}
    Sleep    2
    Close Browser
    