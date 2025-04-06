*** Settings ***
Documentation        Project Cart File

Library    Browser

*** Keywords ***
Clicking the button to decline extended warranty
    Click    xpath=//*[@id="main-content"]/div[1]/div/div[2]/section/section/button[2]

Clicking and validating the presented modal
    Click    xpath=//*[@id="navigation-address-v2"]/button[1]
