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

    Sleep    10