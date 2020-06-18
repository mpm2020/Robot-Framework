*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${Navegador}  Chrome
${URL}  https://www.toolsqa.com/automation-practice-form/


*** Keywords ***

Abrir Navegador
  Open Browser  ${URL}  ${Navegador}
  #Maximize Browser Window