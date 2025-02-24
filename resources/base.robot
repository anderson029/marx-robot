*** Settings ***
Documentation    Tudo tem que começar por aqui

Library    AppiumLibrary

*** Keywords ***
Start section
    Open Application    http://localhost:4723
    ...    automationName=uiautomator2
    ...    platformName=Android
    ...    deviceName=Emulator
    ...    udid=emulator-5554
    ...    autoGrantPermissions=true
    ...    app=${EXECDIR}/apps/markx.apk 

Teardown
    Capture Page Screenshot
    Close Application
