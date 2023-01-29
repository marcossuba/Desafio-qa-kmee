*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${MAIN_PAGE}      https://23250900-14-0-all.runbot123.odoo.com/web
${LOGIN_PAGE}     ${MAIN_PAGE}/login/

*** Keywords ***
Open Main Page Using Chrome Browser
  Open Browser    ${MAIN_PAGE}    Chrome
  Maximize Browser Window

Open Login Page Using Chrome Browser
  Open Browser    ${LOGIN_PAGE}   Chrome
  Maximize Browser Window
