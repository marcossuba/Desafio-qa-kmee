*** Settings ***
Resource        basePage.robot

Test Setup      Inicia sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Login com sucesso
    Go To                     ${url}/login
    Login with                admin           admin

    Should see Logged user    Mitchell Admin

Senha Invalida
    [tags]                        login_error
    Go To                         ${url}/login
    Login with                    testes               abd123

    Should Contain Login Alert    Wrong login/password

Usuario não existe
    [tags]                       login_user404
    Go To                        ${url}/login
    Login with                   admin123!             admin

    Should Contain Login Alert   Wrong login/passwordro

*** Keywords ***
Login with 
    [Arguments]     ${uname}                    ${pass}

    Input Text      css:input[name=login]       ${uname} 
    Input Text      css:input[name=password]    ${pass}
    Click Element   css:button[type=submit]
    sleep  5s

Should Contain Login Alert
    [Arguments]     ${expect_message}
    ${message}      Get WebElement      id:wrapwrap
    Should Contain  ${message.text}     ${expect_message}  

Should see Logged user
    [Arguments]            ${full_name}

    Page Should Contain    ${full_name}
