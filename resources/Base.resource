*** Settings ***
Documentation        Project main file

Library    Browser

Resource    ../resources/Home.resource
Resource    ../resources/Cart.resource


*** Keywords ***
Start session
    New Browser    browser=chromium        headless=False
    New Page    https://www.kabum.com.br/  