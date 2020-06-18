*** Settings ***
Resource  recursos.robot

*** Test Cases ***
G001 Búsquedas de palabras en google
  Abrir Navegador y Esperar Logo
  Input Text  //input[@type='text']   ${palabraABuscar}
  Click Element  //img[@id='hplogo']
  Click Element  //*[@id="tsf"]/div[2]/div/div[3]/center/input[1]
  #Press Key  //*[@id="tsf"]/div[2]/div/div[3]/center/input[1]  \\13
  Title Should Be  ${palabraABuscar} - Buscar con Google
  Page Should Contain  ${palabraABuscar}
  Log To Console  ${palabraABuscar}
  Close Browser

G002 Hacer click en el botón de búsqueda sin escribir palabras en google
  Abrir Navegador y Esperar Logo
  Click Element  //*[@id="tsf"]/div[2]/div/div[3]/center/input[1]
  Title Should Be  Google
  Close Browser