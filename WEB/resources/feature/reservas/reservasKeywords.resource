*** Settings ***
Resource    ../../common/base_web.resource

*** Keywords ***
aguardar elemento estar visivel na tela e preencher
    [Arguments]    ${elemento_aguardado}        ${elemento_a_ser_preenchido}
    Wait Until Page Contains Element        ${elemento_aguardado}
    Input Text    ${elemento_aguardado}    ${elemento_a_ser_preenchido}

aguardar elemento estar visivel na tela e clicar
    [Arguments]    ${elemento_aguardado}       
    Wait Until Page Contains Element        ${elemento_aguardado}
    Click Element    ${elemento_aguardado}
