*** Settings ***
Documentation   Existe en un documento de texto los pasos manuales
...             Esta es mi primera automatización
Library         SeleniumLibrary

*** Variables ***
${palabraABuscar}  Winston Castillo
${Navegador}  chrome
${URL}  http://www.google.com

*** Keywords ***
Abrir Navegador y Esperar Logo
  Open Browser   ${URL}  ${Navegador}
  Wait Until Element Is Visible  //img[@id='hplogo']
