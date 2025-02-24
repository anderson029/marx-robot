*** Settings ***
Documentation    Tudo tem que começar por aqui

Library    AppiumLibrary

Resource    screens/login.resource

*** Keywords ***
Start session
    Open Application    http://localhost:4723
    ...    automationName=uiautomator2
    ...    platformName=Android
    ...    deviceName=Emulator
    ...    udid=emulator-5554
    ...    autoGrantPermissions=true
    ...    app=${EXECDIR}/apps/markx.apk     
    Wait Until Page Contains    Endereço IP da Api    5

Finish Section
    Capture Page Screenshot
    Close Application
