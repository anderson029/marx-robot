*** Settings ***
Documentation    Testar login

Resource    ../resources/base.robot

*** Test Cases ***
Deve ralizar o login
    [Tags]    login
    Start section
    Wait Until Page Contains    Endereço IP da Api    2
    Login    192.168.18.6
    Wait Until Page Contains    Minhas tarefas    5
    Teardown

*** Keywords ***
Login
    [Arguments]    ${ip}
    Input Text       xpath=//*[@resource-id="apiIp"]    ${ip}    
    Click Element    xpath=//*[@resource-id="signInButton"]
    