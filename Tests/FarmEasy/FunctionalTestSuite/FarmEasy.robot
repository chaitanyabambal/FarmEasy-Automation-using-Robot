*** Settings ***
Library  SeleniumLibrary

*** Keywords ***



*** Variables ***
${url}  http://127.0.0.1:5000/
${email}  yashindiasoni@gmail.com
${password}  123

*** Test Cases ***


user login test case
    [Documentation]  user login
    [Tags]  login
    open browser  ${url}  chrome
    maximize browser window
    click link  xpath://html/body/section[1]/div/ul/li[1]/a
    sleep  1s
    input text  name:email  ${email}
    sleep  1s
    Input Text  name:pass  ${password}
    sleep  1s
    Click Button  xpath://html/body/div/div/div/div/form/button
    sleep  3s

viewall products test case
    [Documentation]  view all products
    [Tags]  viewall
    Click Element  class:btn btn-light
    sleep  2s
    Close Browser
