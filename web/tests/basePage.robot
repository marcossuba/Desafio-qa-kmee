*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              https://23160502-14-0-all.runbot155.odoo.com/web

*** Keywords ***
Inicia sessão
    Open Browser                    ${url}                      chrome

Encerra sessão
    Capture Page Screenshot
    Close Browser
