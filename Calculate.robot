*** Settings ***

Library     SeleniumLibrary


** Variables **

#Configuração
${URL}                      https://testpages.herokuapp.com/calculate.php
${Browser}                  chrome

#Dados de input
${num1}                     4
${num2}                     6

#Elementos da página
${campo1}                   //*[@id="number1"]
${campo2}                   //*[@id="number2"]
${button}                   //*[@id="calculate"]


** Keywords **

Dado que estou na pagina de calculo
    Open Browser    ${URL}  ${Browser}
    Maximize Browser Window
    Capture Page Screenshot

Quando preencho os campos com numeros a serem somados
    Input Text      ${campo1}   ${num1}
    Input Text      ${campo2}   ${num2}
    Capture Page Screenshot

E clico em <Calculate>
    Click Element   ${button}

Então a soma é realizada com sucesso
    Capture Page Screenshot


** Test Cases **

CT01: Teste calcular soma

    Dado que estou na pagina de calculo
    Quando preencho os campos com numeros a serem somados
    E clico em <Calculate>
    Então a soma é realizada com sucesso
