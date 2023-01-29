*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${IG_LOGO}            //li[@class='breadcrumb-item active']
${PROFILE_ICON}       //a[@class='o_menu_brand']
${PROFILE_BUTTON}     //li[@class='o_user_menu']
${LINK_BUTTON}        //a[@data-toggle='dropdown']
${LINK_SALE}          //a[@data-menu-id='563']
${LINK_KANBAN}        //div[@class="o_kanban_record"]
${BUTTON_RESUME}      (//button[@data-name='open_ui'])[1]

*** Keywords ***
THEN CLICK LINK
  Wait Until Element Is Enabled     ${LINK_BUTTON}
  Click Element                     ${LINK_BUTTON}

THEN CLICK LINK_SALE
  Wait Until Element Is Enabled     ${LINK_SALE}
  Click Element                     ${LINK_SALE}

Home Page Opened
  Wait Until Element Is Visible    ${IG_LOGO}
  Element Should Be Visible        ${IG_LOGO}
  Wait Until Element Is Visible    ${PROFILE_ICON}
  Element Should Be Visible        ${PROFILE_ICON}
  Wait Until Element Is Visible    ${PROFILE_BUTTON}
  Element Should Be Visible        ${PROFILE_BUTTON}

The user should only see products from that category on the page
  Wait Until Element Is Visible    ${LINK_KANBAN}
  Element Should Be Visible        ${LINK_KANBAN}
  Wait Until Element Is Visible    ${BUTTON_RESUME}
  Element Should Be Visible        ${BUTTON_RESUME}



