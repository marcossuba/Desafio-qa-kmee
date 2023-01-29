*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${USERNAME_FIELD}             //input[@name='login']
${PASSWORD_FIELD}             //input[@name='password']
${LOGIN_BUTTON}               //button[@type='submit']
${LINK_KANBAN}        //div[@class="o_kanban_record"]
${BUTTON_RESUME}      (//button[@data-name='open_ui'])[1]


*** Keywords ***
CLICK BUTTON_RESUME
  Wait Until Element Is Visible     ${LINK_KANBAN}
  Element Should Be Visible         ${LINK_KANBAN}
  Wait Until Element Is Visible     ${BUTTON_RESUME}
  Click Element                     ${BUTTON_RESUME}


