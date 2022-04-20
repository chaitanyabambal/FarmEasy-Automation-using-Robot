*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://127.0.0.1:5000/adminlogin
${username}  admin
${pasword}  12345
${productid}  14
${pid}  15
${bname}  Lays
${pname}  chips
${price}  20

*** Test Cases ***
admin login test case
    [Documentation]  admin login
    [Tags]  login
    open browser  ${url}  chrome
    sleep  1s
    maximize browser window
    input text  name:name  ${username}
    sleep  1s
    input text  name:pass  ${pasword}
    sleep  1s
    click button  xpath://html/body/div/div/div/div/form/button
    sleep  3s

search product test case
    [Documentation]  search a product
    [Tags]  search
    click link  xpath://html/body/nav[2]/div/div/a[1]
    sleep  2s
    input text  name:pid  ${productid}
    sleep  1s
    click button  xpath://html/body/div[1]/div/form/table/tbody/tr[2]/td[2]/button
    sleep  3s


add product test case
    [Documentation]  adding a product
    [Tags]  add
    click link  xpath://html/body/nav[1]/div/div/ul/li[1]/a
    sleep  2s
    click link  xpath://html/body/nav[2]/div/div/a[2]
    sleep  1s
    input text  name:pid  ${pid}
    sleep  1s
    input text  name:bname  ${bname}
    sleep  1s
    input text  name:pname  ${pname}
    sleep  1s
    choose file  name:img  C:/Users/Dell/PycharmProjects/FarmEasy/static/uploads/chips.jpg
    sleep  1s
    input text  name:price  ${price}
    sleep  1s
    click button  xpath://html/body/div/div/div/form/table/tbody/tr[7]/td[2]/button
    sleep  1s
    click link  xpath://html/body/nav[1]/div/div/ul/li[1]/a
    sleep  1s



delete product test case
    [Documentation]  deleting a product
    [Tags]  delete
    click link  xpath://html/body/div/div/div/table/tbody/tr[1]/td[5]/a
    sleep  3s
    click link  xpath://html/body/nav[1]/div/div/ul/li[2]/a
    sleep  5s

*** Keywords ***

