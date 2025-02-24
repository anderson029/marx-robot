*** Settings ***
Documentation    Testar login

Resource    ../resources/base.robot

*** Test Cases ***
Deve ralizar o login
    [Tags]    login

    Open Application    http://localhost:4723
    ...    automationName=uiautomator2
    ...    platformName=Android
    ...    deviceName=Emulator
    ...    udid=emulator-5554
    ...    autoGrantPermissions=true
    ...    app=${EXECDIR}/apps/markx.apk 
    
    Wait Until Page Contains    Endereço IP da Api    2

    Input Text       xpath=//*[@resource-id="apiIp"]    192.168.18.6  
    Click Element    xpath=//*[@resource-id="signInButton"]    

    Wait Until Page Contains    Minhas tarefas    5

    Capture Page Screenshot
    Close Application