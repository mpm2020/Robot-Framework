*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}     chrome
${homepage}     http://automationpractice.com/index.php
${Seleccion}    Other

*** Keywords ***
Select Women Option
    Click Element   xpath=//*[@id="block_top_menu"]/ul/li[1]/a
    Title Should Be     Women - My Store

Select Dresses Option
    Click Element   xpath=//*[@id="block_top_menu"]/ul/li[2]/a
    Title Should Be     Dresses - My Store

*** Test Cases ***
001 Caso con Condicionales
    Open Browser    ${homepage}     ${browser}
    Wait Until Element Is Visible   xpath=//*[@id="header_logo"]/a/img
    Run Keyword If  '${Seleccion}'=='Women'   Select Women Option
    Close Browser