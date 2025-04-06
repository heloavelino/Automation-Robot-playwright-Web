*** Settings ***
Documentation        Project showcase file

Library    Browser

*** Keywords ***
Searching for a product
    Fill Text    css=#input-busca     ps5
    Sleep    2
    Press Keys   css=#input-busca     Enter

Clicking to add the product to the cart through the storefront
    Scroll To Element    xpath=//*[@id="listing"]/div[3]/div/div/div[2]/div[1]/main/div[3]/article/div[2]/div[2]/button
    Hover                xpath=//a[contains(@data-smarthintproductid, "636960")]
    Click                xpath=//a[contains(@data-smarthintproductid, "636960")]/following::button[contains(@class, "bAFBQb")][1]
