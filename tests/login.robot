*** Settings ***
Documentation    Testar login

Resource    ../resources/base.robot

Test Setup       Start session
Test Teardown    Finish Section

*** Test Cases ***
Deve realizar o login
    [Tags]    login
    Do login    192.168.18.6
    Validate screen    Minhas tarefas

Não deve realizar login com ip inválido
    [Tags]    noLogin
    Do login    1234
    Validate screen    O IP informando não responde