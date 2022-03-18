*** Settings ***
Documentation    Busca em ecommerce

Library          SeleniumLibrary
Test Setup       Abrir navegador
Test Teardown    Fechar navegador 

*** Variables ***
${BROWSER}    chrome
${URL}        http://automationpractice.com/index.php
&{HOME_PAGE}
...           title=My Store
...           input_busca=search_query_top
...           btn_buscar=//*[@class="btn btn-default button-search"]
&{PRODUTO_PAGE}
...           img_blouse=//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "blouse" foi listado no site

*** Keywords ***
Abrir navegador   
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window

Acessar a página home do site Automation Practice
    Go To               ${URL}
    Title Should Be     ${HOME_PAGE.title}

Digitar o nome do produto ${PRODUTO} no campo de pesquisa
    Wait Until Element Is Visible    ${HOME_PAGE.input_busca}
    Input Text                       ${HOME_PAGE.input_busca}    ${PRODUTO}

Clicar no botão pesquisar    
    Wait Until Element Is Visible    ${HOME_PAGE.btn_buscar}
    Click Element                    ${HOME_PAGE.btn_buscar}

Conferir se o produto ${PRODUTO} foi listado no site
    Wait Until Element Is Visible    ${PRODUTO_PAGE.img_blouse}
    Page Should Contain Image        ${PRODUTO_PAGE.img_blouse}

Fechar navegador
    #Capture Page Screenshot
    Close Browser