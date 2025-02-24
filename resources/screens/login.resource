*** Settings ***
Documentation    Elementos  e ações na tela de login

Library    AppiumLibrary

*** Variables ***
${API_IP}    192.168.18.6

*** Keywords ***

Do login
    Input Text       xpath=//*[@resource-id="apiIp"]    ${API_IP}    
    Click Element    xpath=//*[@resource-id="signInButton"]