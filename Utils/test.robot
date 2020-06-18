*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
001 Abrir pagina blanca y cambiar tamano
    Log To Console  ${OUTPUTDIR}
    Remove Files    ${OUTPUTDIR}/selenium-screenshot-*.png
    Sleep  5s
    Open Browser    about:blank      chrome
    Set Window Position  100        100
    Set Window Size      767       600
    Go To  https://www.mobilepractice.io/en/
    Sleep  5s
    Capture Page Screenshot  selenium-screenshot-{index}.png
    Close Browser
002 Concatenar
    ${long var}=    Catenate    This is a long string
                    ...     that will be concatenated

    Log To Console  ${long var}
