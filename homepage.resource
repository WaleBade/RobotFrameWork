*** Settings ***
Documentation    Test senario related to Luma home page navigation
Library          SeleniumLibrary


*** Variables ***
${LOGOVERIFICATION}    //a[@class="logo"]
${WOMENDROPDOWN}       //ul[@id="ui-id-2"]/li[2]
${WOMENTOPS}           //a[@id="ui-id-9"]
${WOMENBOTTOMS}        //a[@id="ui-id-10"]
${MENDROPDOWN}         //ul[@id="ui-id-2"]/li[3]
${MENTOPS}             //a[@id="ui-id-17"]
${MENBOTTOMS}          //a[@id="ui-id-18"]
${GEARDROPDOWN}        //ul[@id="ui-id-2"]/li[4]
${TRAININGDROPDOWN}    //ul[@id="ui-id-2"]/li[5]
${SALES}               //ul[@id="ui-id-2"]/li[6]
${GETTEXT}             //ul[@id="ui-id-2"]/li[6]
${CARTBUTTON}          //a[@data-bind="scope: 'minicart_content'"]
${URL}                 https://magento.softwaretestingboard.com/
${CONSENT}             xpath: //button[@aria-label="Consent"]
${BROWSER}             Chrome


*** Keywords ***
Navigate to Luma homepage
                 Open Browser    ${URL}  ${BROWSER}  headless
                 Maximize Browser Window
                 Click Element    ${CONSENT}

Assert that Luma homepage has a logo
                 Page Should Contain Element    ${LOGOVERIFICATION}

Hover over women and assert that correct items are listed
                 #Women Dropdown verification
                 [Arguments]  ${navlink1}  ${dropdown_item1}  ${dropdown_item2}
                 Mouse Over  ${navlink1}
                 Wait Until Page Contains  ${dropdown_item1}
                 Wait Until Page Contains  ${dropdown_item2}

Hover over women Tops and assert that correct items are listed
                 #Women Tops content verification
                 [Arguments]  ${topslink1}  ${tops_item1}  ${tops_item2}  ${tops_item3}  ${tops_item4}
                 Mouse Over    ${topslink1}
                 Wait Until Page Contains   ${tops_item1}
                 Wait Until Page Contains   ${tops_item2}
                 Wait Until Page Contains   ${tops_item3}
                 Wait Until Page Contains   ${tops_item4}

Hover over women Bottoms and assert that correct items are listed
                 #Women Bottoms content verification
                 [Arguments]  ${bottomslink1}  ${bottoms_item1}  ${bottoms_item2}
                 Mouse Over    ${bottomslink1}
                 Wait Until Page Contains   ${bottoms_item1}
                 Wait Until Page Contains   ${bottoms_item2}

Hover over men and assert that correct items are listed
                 #Men Dropdown Verification
                 [Arguments]  ${navlink1}  ${dropdown_item1}  ${dropdown_item2}
                 Mouse Over  ${navlink1}
                 Wait Until Page Contains  ${dropdown_item1}
                 Wait Until Page Contains  ${dropdown_item2}

Hover over men Tops and assert that correct items are listed
                 #Men Tops verification
                 [Arguments]  ${topslink1}  ${tops_item1}  ${tops_item2}  ${tops_item3}  ${tops_item4}
                 Mouse Over    ${topslink1}
                 Wait Until Page Contains   ${tops_item1}
                 Wait Until Page Contains   ${tops_item2}
                 Wait Until Page Contains   ${tops_item3}
                 Wait Until Page Contains   ${tops_item4}

Hover over men Bottoms and assert that correct items are listed
                 #Men Bottoms content verification
                 [Arguments]  ${bottomslink1}  ${bottoms_item1}  ${bottoms_item2}
                 Mouse Over    ${bottomslink1}
                 Wait Until Page Contains   ${bottoms_item1}
                 Wait Until Page Contains   ${bottoms_item2}

Hover over gear and assert that correct items are listed
                 #Gear dropdown verification
                 [Arguments]  ${gearlink1}  ${gear_item1}  ${gear_item2}  ${gear_item3}
                 Mouse Over      ${GEARDROPDOWN}
                 Wait Until Page Contains    ${gear_item1}
                 Wait Until Page Contains    ${gear_item2}
                 Wait Until Page Contains    ${gear_item3}

Hover over training and assert that correct item is listed
                 #Training dropdown verification
                 [Arguments]  ${traininglink1}  ${training_item1}
                 Mouse Over      ${traininglink1}
                 Wait Until Page Contains    ${training_item1}

Assert that the sale button is visible
                 #Sale
                 [Arguments]  ${salelink1}  ${sale_text1}  ${sale_text2}
                 Wait Until Element Is Visible   ${salelink1}
                 Get Text    ${sale_text1}
                 Log To Console    ${sale_text2}

Assert that the page contains cart button and that the button is visible
                 #Cart button
                 [Arguments]  ${cartlink}  ${cartlink}
                 Wait Until Element Is Visible    ${cartlink}
                 Element Should Be Enabled        ${cartlink}