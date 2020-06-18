*** Settings ***
Library  String

*** Variables ***
${Browser}   Chrome
${homePage}  http://www.winstoncastillo.com/udemy/

*** Keywords ***
Open Homepage
    Open Browser   ${homePage}    ${browser}
