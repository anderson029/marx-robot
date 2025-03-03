*** Settings ***
Documentation    Elementos e ações na tela de cadastro de tarefa

Library    AppiumLibrary

*** Variables ***
${new_text_input}    xpath=//*[@resource-id="newTask"]
${create_button}    xpath=//*[@resource-id="createTask"]

*** Keywords ***
Create task
    [Arguments]      ${task_name}
    Input Text       ${new_text_input}    ${task_name}       
    Click Element    ${create_button}

Should have task    
    [Arguments]    ${task_name}

    Wait Until Element Is Visible 
    ...    xpath=//*[@resource-id= "taskText"][@text="${task_name}"]
    ...    5

Remove task by name
    [Arguments]    ${task_name}
    ${modal_confirmation}    Set Variable    xpath=//*[@text= "${task_name}"]/../..//*[@resource-id = "removeTask"]    

    Wait Until Element Is Visible    ${modal_confirmation}    5   
    Click Element                    ${modal_confirmation} 
    Click Text    SIM

Finish task
    [Arguments]    ${task_name}

    Click Element    xpath=//*[@text="${task_name}"]/..

Task should be done
    [Arguments]    ${task_name}

    Wait Until Element Is Visible    xpath=//*[@text="${task_name}"]/..//android.widget.ImageView