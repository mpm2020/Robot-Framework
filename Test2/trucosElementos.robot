*** Settings ***
Library   SeleniumLibrary
Resource  recursos.robot
Force Tags  Test

*** Test Cases ***
001 Ir al blog de Winston Castillo
  [Tags]  Sanity  Testing
  Open HomePage
  Title should be  Hola Mundo!
  Click Link  Este Link te dirije a otra ventana
  Wait Until Element Is Visible  //*[@id="page-header"]/div[1]/div/div/div/p
  Title should be  Winston Castillo – Un sitio para comunicarse
  Close Browser

002 Abrir Ventana Modal
  Open HomePage
  Title should be  Hola Mundo!
  Set Focus To Element  //a[contains(text(),'Este hace aparecer una ventana nueva')]
  Click Link  //a[contains(text(),'Este hace aparecer una ventana nueva')]
  Title should be  Hola Mundo!
  Wait Until Element Is Visible  //*[@id="exampleModalLabel"]
  Close Browser