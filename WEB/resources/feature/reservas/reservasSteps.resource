*** Settings ***
Resource    ../../common/base_web.resource
Library    FakerLibrary

*** Keywords ***
Dado que eu tenha acessado o sistema reservas desbravador
    aguardar texto: "DIA INICIAL" estar visivel e printar a tela

Quando fechar o popup informativo
    #aguardar elemento estar visivel na tela e clicar    ${Botao_FECHAR_POPUP}
    Wait Until Page Contains Element    ${Botao_FECHAR_POPUP}

E selecionar dia inicial e final 
    [Arguments]    ${val1}    ${val2}
    Sleep    2
    aguardar elemento estar visivel na tela e clicar    (//div/table//span[text()="${val1}"])[1]
    aguardar elemento estar visivel na tela e clicar    (//div/table//span[text()="${val2}"])[1]
    
    
    
E preencher quantidade de hóspedes
    Wait Until Page Contains Element        xpath=//select[@id="cdadultos"]
    Click Element    xpath=//select[@id="cdadultos"]
    Click Element    xpath=//*[@id="cdadultos"]/option[3]
    Wait Until Page Contains Element        xpath=//select[@id="cdchdfree"]
    Click Element    xpath=//select[@id="cdchdfree"]
    Click Element    xpath=//*[@id="cdchdfree"]/option[2]


E Efetuar cadastro
    Wait Until Page Contains Element        xpath=//button[@id="bt_compra-ST1"]
    verificar que o quarto selecionado é     STANDARD ST1
    Sleep    2
    Click Element    xpath=//button[@id="bt_compra-ST1"]
    Clicar em pagar
    efetuar cadastro

Clicar em pagar
    Sleep    2
    aguardar elemento estar visivel na tela e clicar    //*[@id="bt_pagar"]/button

efetuar cadastro
    aguardar elemento estar visivel na tela e clicar    //*[@id="opcoes_autenticacao"]/div[2]
    preencher dados
    continuar reserva

preencher dados
    Wait Until Page Contains Element    //*[@id="nmpessoafn"]
    ${name}=    First Name
    ${email}=    Email
    Input Text    //*[@id="nmpessoafn"]    ${name}
    Input Text    //*[@id="nmpessoasn"]    Rebeka
    Input Text    //*[@id="nmlogin"]    ${email}
    Input Text    //*[@id="nmlogin1"]    ${email}
    Input Text    //*[@id="nmsenha"]    1234
    Input Text    //*[@id="nmsenha2"]    1234
    aguardar elemento estar visivel na tela e clicar    //*[@id="button"]

continuar reserva
    Sleep    2
    Execute Javascript     window.jQuery('#lido').click()
    

verificar que o quarto selecionado é 
    [Arguments]    ${qt}
    ${quarto}=    Get WebElement    //*[@id="nometipo-ST1"]
    Element Text Should Be    ${quarto}    ${qt}

Então sistema informará que não existe apartamento disponível para a data selecionada
    Wait Until Page Contains    Não temos apartamentos disponíveis paras os dias

Então sistema apresentará uma tela para concordar com as condições e continuar reserva
    continuar reserva