*** Settings ***
Resource          ../resources.robot
Resource          ../pages/login_pages.robot
Resource          ../pages/ponto_venda_pages.robot
Resource          ../pages/home_pages.robot
Resource          ../steps/login_steps.robot
Test Setup        Open Login Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${valid_username}       admin
${valid_password}       admin

*** Test Cases ***

Scenario: User can filter products by category
  GIVEN Login Page Opened
  WHEN Input Username And Password    ${valid_username}    ${valid_password}
  THEN CLICK LINK
  THEN CLICK LINK_SALE
  THEN Home Page Opened
  WHEN CLICK BUTTON_RESUME
  THEN the user should only see products from that category on the page

*** Keywords ***
Home Ponto de venda
  GIVEN Login Page Opened
  WHEN Input Username And Password    ${valid_username}    ${valid_password}
  THEN CLICK LINK
  THEN CLICK LINK_SALE
  THEN Home Page Opened
  WHEN CLICK BUTTON_RESUME