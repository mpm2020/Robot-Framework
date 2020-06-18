*** Settings ***
Library  BuiltIn
Library  SeleniumLibrary



*** Test Cases ***
Run-Keyword-If
    #Utiliza  Condicional
    ${TYPE}=  Set Variable  CAT
    Log To Console  ${TYPE}
    Run Keyword If  '${TYPE}'=='DOG'  log  Testing Variant 1
    Run Keyword If  '${TYPE}'=='CAT'  log  Testing Variant 2
    Run Keyword If  '${TYPE}'=='Duck'  log  Testing Variant 3
    #Log To Console  test
    #Log  test
Run-Keyword-Ignore-Error
    #Ignora posible error
    @{item}     Create List  Dog  Cat  Duck
    Run Keyword And Ignore Error    Should Not Be Empty     ${item}
