*** Settings ***
Documentation    Elementos  e ações na tela de login

Library    AppiumLibrary

*** Keywords ***

Do login
    [Arguments]    ${API_IP} 
    Input Text       xpath=//*[@resource-id="apiIp"]    ${API_IP}    
    Click Element    xpath=//*[@resource-id="signInButton"]

Validate screen
    [Arguments]    ${text}
    Wait Until Page Contains    ${text}    5