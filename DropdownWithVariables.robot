*** Settings ***
Documentation    Test senarios related to Luma home page navigation
Library          SeleniumLibrary
Resource         homepage.resource
Suite Setup      Navigate to Luma homepage

*** Test Cases ***
Verify Luma Hope Page
                 Assert that Luma homepage has a logo

Verify women dropdown and content list
                 #Women Dropdown verification
                 Hover over women and assert that correct items are listed  ${WOMENDROPDOWN}  Tops  Bottoms
                 Hover over women Tops and assert that correct items are listed  ${WOMENTOPS}  Jackets  Hoodies & Sweatshirts  Tees  Bras & Tanks
                 Hover over women Bottoms and assert that correct items are listed  ${WOMENBOTTOMS}  Pants  Shorts

Verify men dropdown and content list
                 #Men Dropdown verification
                 Hover over men and assert that correct items are listed  ${MENDROPDOWN}  Tops  Bottoms
                 Hover over men Tops and assert that correct items are listed  ${MENTOPS}  Jackets  Hoodies & Sweatshirts  Tees  Bras & Tanks
                 Hover over men Bottoms and assert that correct items are listed  ${MENBOTTOMS}  Pants  Shorts

Verify dropdown for gear
                 Hover over gear and assert that correct items are listed  ${GEARDROPDOWN}  Bags  Fitness Equipment  Watches

Verify dropdown for training
                 Hover over training and assert that correct item is listed  ${TRAININGDROPDOWN}  Video Download

Verify dropdown for sale
                 Assert that the sale button is visible  ${SALES}  ${GETTEXT}  Sale

Verify that cart button is visible
                 Assert that the page contains cart button and that the button is visible  ${CARTBUTTON}  ${CARTBUTTON}



