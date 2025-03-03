*** Settings ***
Documentation    Testar  cadastro e remoção de tarefas

Resource    ../resources/base.robot

Task Setup       Start session
Task Teardown    Finish Section

*** Test Cases ***
Deve poder cadastrar uma nova tarefa
    [Tags]    newTask

    ${task_name}    Set Variable    Estudar Xpath!

    #Remove as tarefas no BD do mongo com a lib que criamos antes do teste
    Remove task from database    ${task_name}   

    Do login    192.168.18.6  
    Validate screen    Minhas tarefa  
    Create task         ${task_name}
    Validate screen     ${task_name}   
    Should have task    ${task_name}

Deve poder remover uma tarefa indesejada
    [Tags]    removeTask
    
    ${task_name}    Set Variable    Comprar Suco!
    Remove task from database    ${task_name} 

    Do login    192.168.18.6  
    Validate screen    Minhas tarefa  
    Create task            ${task_name}
    Validate screen        ${task_name}
    Remove task by name    ${task_name}  
    Wait Until Page Does Not Contain    ${task_name}

Deve poder concluir uma tarefa
    [Tags]    doneTask
    
    ${task_name}    Set Variable    Estudar Xpath Done
    Remove task from database    ${task_name} 

    Do login    192.168.18.6  
    Validate screen    Minhas tarefa  
    Create task            ${task_name}
    Validate screen        ${task_name}
    
    Finish task            ${task_name}
    Task should be done    ${task_name}



# Não deve cadastrar tarefas duplicadas
# Deve excluir tarefa 

