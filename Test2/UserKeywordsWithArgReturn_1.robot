*** Settings ***
Library  SeleniumLibrary
Resource  resources.robot

*** Variables ***
${url}  http://www.newtours.demoaut.com/
${browser}  Chrome


*** Test Cases ***
TC1
  #User Defined Keywords with arguments and return value
  ${PageTitle}=  launchBrowser  ${url}  ${browser}
  Log To Console  ${PageTitle}
  #Log into the report
  Log  ${PageTitle}
  input text  name:userName  Mercury
  input text  name:password  Mercury


