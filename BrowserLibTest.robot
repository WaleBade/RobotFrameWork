*** Settings ***
Documentation    Suite description
Library          Browser

*** Test Cases ***
Valid Login
            New Browser  Chromium   headless=false
            New Page     https://magento.softwaretestingboard.com/
            Click        xpath=//button[@aria-label="Consent"]
            Click        xpath=/html/body/div[2]/header/div[1]/div/ul/li[2]/a
            Fill Text    xpath=//input[@id="email"]    testing2023@gmail.com
            Fill Text    xpath=//input[@name='login[password]']  Testing123
            Click        xpath=//button[@class='action login primary']
            #Wait For Elements State    xpath=//h1[@class="page-title"]/span  Visible   Timeout=10 s
            Sleep        10s
            Get Text     xpath=/html/body/div[1]/header/div[1]/div/ul/li[1]/span  *=  'Welcome, Bisi Balqees!'
