*** Settings ***
Resource    ../common/base_web.resource

*** Keywords ***
Abrir Sessao
    ${CHROMEDRIVER_PATH}=    Baixar Chromedriver Path
    Open Browser     ${BASE_URL}    ${BROWSER}    executable_path=${CHROMEDRIVER_PATH}

Fechar Sessao 
    Close Browser

${word} clicar em "${btn}"    
    aguardar elemento estar visivel na tela e clicar       ${Botao_${btn}}

aguardar texto: "${Texto}" estar visivel e printar a tela 
    Wait Until Page Contains    ${Texto}
    Sleep    1
    Capture Page Screenshot

