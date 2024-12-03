*** Settings ***
Documentation    Test senario related to Luma home page navigation
Library          SeleniumLibrary
Suite Setup      Navigate to Luma homepage

*** Test Cases ***
Verify Luma Hope Page
    [Tags]       Positive Test
    #[Setup]      Navigate to Luma homepage
                 Page Should Contain Element    xpath: //a[@class="logo"]

Verify all dropdown content on navigation menu
    [Tags]       Positive Test
    #[Setup]     Dropdown verification
                 #Women
                 Mouse Over      //ul[@id="ui-id-2"]/li[2]
                 Wait Until Page Contains    Tops
                 #Women Tops content verification
                 Mouse Over    //a[@id="ui-id-9"]
                 Wait Until Page Contains   Jackets
                 Wait Until Page Contains   Hoodies & Sweatshirts
                 Wait Until Page Contains   Tees
                 Wait Until Page Contains   Bras & Tanks
                 #Women Bottoms content verification
                 Wait Until Page Contains    Bottoms
                 Mouse Over    //a[@id="ui-id-10"]
                 Wait Until Page Contains   Pants
                 Wait Until Page Contains   Shorts
                 #Men
                 Mouse Over      //ul[@id="ui-id-2"]/li[3]
                 #Men Tops content verification
                 Wait Until Page Contains    Tops
                 Mouse Over    //a[@id="ui-id-17"]
                 Wait Until Page Contains   Jackets
                 Wait Until Page Contains   Hoodies & Sweatshirts
                 Wait Until Page Contains   Tees
                 Wait Until Page Contains   Bras & Tanks
                 #Men Bottoms content verification
                 Wait Until Page Contains    Bottoms
                 Mouse Over    //a[@id="ui-id-18"]
                 Wait Until Page Contains   Pants
                 Wait Until Page Contains   Shorts
                 #Gear
                 Mouse Over      //ul[@id="ui-id-2"]/li[4]
                 Wait Until Page Contains    Bags
                 Wait Until Page Contains    Fitness Equipment
                 Wait Until Page Contains    Watches
                 #Training
                 Mouse Over      //ul[@id="ui-id-2"]/li[5]
                 Wait Until Page Contains    Video Download
                 #Sale
                 Wait Until Element Is Visible   //ul[@id="ui-id-2"]/li[6]
                 Get Text    //ul[@id="ui-id-2"]/li[6]
                 Log To Console    Sale


Verify that cart button is visible
    [Tags]       Positive Test
                 Wait Until Element Is Visible    //a[@data-bind="scope: 'minicart_content'"]
                 Element Should Be Enabled        //a[@data-bind="scope: 'minicart_content'"]

*** Keywords ***
Navigate to Luma homepage
                 Open Browser    https://magento.softwaretestingboard.com/   headlesschrome
                 Maximize Browser Window
                 #Click Element   xpath://p[@class="fc-button-label"]
