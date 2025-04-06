*** Settings ***
Documentation         Teste automatizado do catalogo Kyte

Library     Browser
Library     XML
Resource    ../resources/Base.resource

*** Test Cases ***
Pesquisando um produto no site
    [Tags]    cn1
    Start session
    Searching for a product
    Wait For Elements State    text=PlayStation 5 com Preços Imbatíveis    visible    5

Adicionando produto no carrinho
    [Tags]    cn2

    Start session
    Searching for a product
    Press Keys    css=#input-busca    Enter
    Wait For Elements State    text=PlayStation 5 com Preços Imbatíveis    visible    5
    Clicking to add the product to the cart through the storefront
    Wait For Elements State    text=Produto adicionado no carrinho   visible    5
    Clicking the button to decline extended warranty

Validando direcionamento para abertura do modal de login
    [Tags]    cn3
    Start session 
    Searching for a product
    Wait For Elements State    text=PlayStation 5 com Preços Imbatíveis    visible    5
    Clicking to add the product to the cart through the storefront
    Wait For Elements State    text=Produto adicionado no carrinho   visible    5
    Clicking the button to decline extended warranty
    Wait For Elements State    text=Resumo
    Clicking and validating the presented modal
    Wait For Elements State    text=ACESSE SUA CONTA
    Sleep    2

