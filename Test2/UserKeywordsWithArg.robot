*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}    http://www.newtours.demoaut.com/
${url_2}  http://www.newtours_dev.demoaut.com/
${browser}  Chrome



*** Test Cases ***
TC1
  #User Defined Keywords with arguments
  launchBrowser  ${url}  ${browser}
  input text  name:userName  Mercury
  input text  name:password  Mercury
TC2
  launchBrowser  ${url_2} ${Browser}
  input text  name:userName  Mercury
  input text  name:password  Mercury

*** Keywords ***
launchBrowser
  [Arguments]   ${appurl}  ${appbrowser}
  open browser  ${appurl}  ${appbrowser}
  maximize browser window
  Close browser