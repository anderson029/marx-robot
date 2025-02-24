*** Settings ***
Documentation    Testar login

Resource    ../resources/base.robot

Test Setup       Start session
Test Teardown    Finish Section

*** Test Cases ***
Deve ralizar o login
    [Tags]    login
    Do login
    Wait Until Page Contains    Minhas tarefas    5