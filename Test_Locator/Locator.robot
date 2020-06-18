*** Settings ***
Documentation   Examples with locators en robotframework
Resource  recursos.robot

*** Test Cases ***
L001 Ejemplo Locator CSS
  Abrir Navegador
  #Posicionarse en el objeto en la pestaña "Elements" del Browser Chrome, hacer click derecho con el mouse y seleccionar copy>> copy selector
  Page Should Contain Element  css=button#buttonwithclass
  Close Browser


L002 Ejemplo Locator ID
  Abrir Navegador
  #Posicionarse en el objeto en la pestaña "Elements" del Browser Chrome, hacer click derecho con el mouse y seleccionar Edit as html y copiar id
  Input Text  datepicker  25/12/2019
  Close Browser


L003 Ejemplo Locator XPATH
  Abrir Navegador
  #Posicionarse en el objeto en la pestaña "Elements" del Browser Chrome, hacer click derecho con el mouse y seleccionar copy>> copy xpath
  Page Should Contain Element  //*[@id="profession-1"]
  Close Browser

L004 Ejemplo Locator Link 1
  [Tags]  link
  Abrir Navegador
  sleep  5s
  Click Element  css=a#cookie_action_close_header
  sleep  5s
  #Posicionarse en el objeto en la pestaña "Elements" del Browser Chrome, hacer click derecho con el mouse y  seleccionar Edit as html y copiar url
  Click Link  http://toolsqa.com/automation-practice-form/
  Close Browser

L005 Ejemplo Locator Link 2
  [Tags]  link
  Abrir Navegador
  sleep  5s
  Click Element  css=a#cookie_action_close_header
  sleep  5s
  #Posicionarse en el objeto en la pestaña "Elements" del Browser Chrome, hacer click derecho con el mouse y  seleccionar Edit as html y copiar texto
  Click Link  //a[@href='http://toolsqa.com/automation-practice-form/']
  Close Browser
