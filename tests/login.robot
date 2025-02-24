*** Settings ***
Documentation    Testar login

Resource    ../resources/base.robot

Test Setup       Start session
Test Teardown    Finish Section

*** Test Cases ***
Deve ralizar o login
    [Tags]    login
    Login    192.168.18.6
    Wait Until Page Contains    Minhas tarefas    5
   
*** Keywords ***
Login
    [Arguments]    ${ip}
    Input Text       xpath=//*[@resource-id="apiIp"]    ${ip}    
    Click Element    xpath=//*[@resource-id="signInButton"]
    