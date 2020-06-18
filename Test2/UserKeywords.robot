*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url_testing}  http://www.newtours_test.demoaut.com/
${url_PreProd}  http://www.newtours_dev.demoaut.com/
${url_Prod}  http://www.newtours_prod.demoaut.com/
${browser}  Chrome


*** Test Cases ***
TC1
  #User Defined Keywords without arguments
  launchBrowser_tst
  input text  name:userName  Mercury
  input text  name:password  Mercury

TC2
  #User Defined Keywords without arguments
  launchBrowser_dev
  input text  name:userName  Mercury
  input text  name:password  Mercury

*** Keywords ***
launchBrowser_tst
  open browser  ${url_testing}  ${browser}
  maximize browser window

launchBrowser_dev
  open browser  ${url_PreProd}  ${browser}
  maximize browser window

launchBrowser_prod
  open browser  ${url_Prod}  ${browser}
  maximize browser window