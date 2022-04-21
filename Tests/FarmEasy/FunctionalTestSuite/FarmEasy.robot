*** Settings ***
Library  SeleniumLibrary

*** Keywords ***


*** Variables ***
${url}  http://127.0.0.1:5000/
${email}  abc@gmail.com
${password}  123
${username}  admin
${pasword}  12345
${productid}  3
${pid}  14
${bname}  Kurkure
${pname}  Kurkure
${price}  20
${img}  C:/Users/yashi/PycharmProjects/FarmEasy/static/uploads/kurkure.jpg

*** Test Cases ***
admin login page test case
    [Documentation]  admin login
    [Tags]  admin
    open browser  ${url}  chrome
    maximize browser window
    sleep  2s
    click element  xpath://html/body/nav/div/ul/li[6]/a
    input text  name:name  ${username}
    sleep  1s
    input text  name:pass  ${pasword}
    sleep  1s
    click button  xpath://html/body/div/div/div/div/form/button
    sleep  3s

admin add product test case
    [Documentation]  add products
    [Tags]  admin

    click element  xpath://html/body/nav[2]/div/div/a[2]
    input text  name:pid  ${pid}
    sleep  1s
    input text  name:bname  ${bname}
    sleep  1s
    input text  name:pname  ${pname}
    sleep  1s
    click element  xpath://html/body/div/div/div/form/table/tbody/tr[4]/td[2]/select/option[2]
    sleep  1s
    input text  name:img  ${img}
    sleep  1s
    input text  name:price  ${price}
    sleep  1s
    click button  xpath://html/body/div/div/div/form/table/tbody/tr[7]/td[2]/button
    sleep  1s
    click element  xpath://html/body/nav/div/div/ul/li[1]/a
    sleep  1s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep  3s

admin update test case
    [Documentation]  Update product
    [Tags]  admin
    click element  xpath://html/body/div/div/div/table/tbody/tr[14]/td[5]/a[1]
    sleep  1s
    input text  name:bname  Lays
    sleep  1s
    input text  name:pname  Lays
    sleep  1s
    input text  name:img  C:/Users/yashi/PycharmProjects/FarmEasy/static/uploads/Lays.jpg
    sleep  1s
    input text  name:price  30
    sleep  1s
    click button  xpath://html/body/div/div/div/form/table[1]/tbody/tr[7]/td[2]/button
    sleep  1s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep  3s

admin delete test case
    [Documentation]  Delete Product
    [Tags]  admin
    click element  xpath://html/body/div/div/div/table/tbody/tr[14]/td[5]/a[2]
    sleep  2s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep  3s

admin search test case
    [Documentation]  Search Product
    [Tags]  admin
    Execute Javascript    window.scrollTo(document.body.scrollHeight, 0)
    sleep  3s
    click element  xpath://html/body/nav[2]/div/div/a[1]
    sleep  2s
    input text  name:pid  ${productid}
    sleep  1s
    click button  xpath://html/body/div[1]/div/form/table/tbody/tr[2]/td[2]/button
    sleep  3s

admin view order test case
    [Documentation]  View Orders
    [Tags]  admin
    click element  xpath://html/body/nav/div/div/ul/li[2]/a
    sleep  3s

admin logout test case
    [Documentation]  Admin Logout
    [Tags]  admin
    click element  xpath://html/body/nav/div/div/ul/li[3]/a
    sleep  2s

user signup test case
    [Documentation]  user signup
    [Tags]  user
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep  2s
    Execute Javascript    window.scrollTo(document.body.scrollHeight, 0)
    sleep  2s
    click element  xpath://html/body/nav/div/ul/li[4]/a
    sleep  1s
    input text  name:firstname  abc
    sleep  1s
    input text  name:lastname  def
    sleep  1s
    input text  name:DOB  15/06/2000
    sleep  1s
    input text  name:email  abc@gmail.com
    sleep  1s
    input text  name:phone  1234567890
    sleep  1s
    input text  name:pass  123
    sleep  1s
    input text  name:cnfpass  123
    sleep  1s
    click button  xpath://html/body/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s

user login test case
    [Documentation]  user login
    [Tags]  user
    input text  name:email  ${email}
    sleep  1s
    input text  name:pass  ${password}
    sleep  2s
    click element  xpath://html/body/div/div/div/div/form/button
    sleep  1s

user update test case
    [Documentation]  user update
    [Tags]  user
    click element  xpath://html/body/nav/div/ul/li[1]/a
    sleep  2s
    click element  xpath://html/body/nav/div/ul/li[1]/ul/li[1]/a
    sleep  1s
    input text  name:firstname  Yash
    sleep  1s
    input text  name:lastname  Soni
    sleep  1s
    click button  xpath://html/body/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  1s
    click element  xpath://html/body/nav/div/ul/li[1]/a
    sleep  2s
    click element  xpath://html/body/nav/div/ul/li[1]/ul/li[1]/a
    sleep  1s
    click button  xpath://html/body/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  1s

user category test case
    [Documentation]  Categories
    [Tags]  user
    click element  xpath://html/body/nav/div/ul/li[2]/a
    sleep  1s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep  2s
    Execute Javascript    window.scrollTo(document.body.scrollHeight, 0)
    sleep  2s
    click element  xpath://html/body/div/ul/li[1]/a
    sleep  2s
    click element  xpath://html/body/div/ul/li[2]/a
    sleep  2s
    click element  xpath://html/body/div/ul/li[3]/a
    sleep  2s
    click element  xpath://html/body/div/ul/li[4]/a
    sleep  2s
    click element  xpath://html/body/div/ul/li[5]/a
    sleep  2s
    click element  xpath://html/body/div/ul/li[6]/a
    sleep  2s
    click element  xpath://html/body/nav/div/ul/li[2]/a
    sleep  2s

add to cart test case
    [Documentation]  Add to cart
    [Tags]  user
    click element  xpath://html/body/section/div/div/div[3]/form/div/a
    sleep  1s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep  2s
    click element  xpath://html/body/section/div/div/div[10]/form/div/a
    sleep  2s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep  2s
    click element  xpath://html/body/section/div/div/div[13]/form/div/a
    sleep  1s
    click element  xpath://html/body/nav/div/ul/li[4]/a
    sleep  6s

remove from cart test case
    [Documentation]  Remove from cart
    [Tags]  user
    click element  xpath://html/body/div[2]/div/div[3]/div/a
    sleep  3s

user Orders test case
    [Documentation]  user order
    [Tags]  user
    click element  xpath://html/body/nav/div/ul/li[1]/a
    sleep  1s
    click element  xpath://html/body/nav/div/ul/li[1]/ul/li[2]/a
    sleep  4s
    click element  xpath://html/body/div[1]/div/div/a
    sleep  3s

user tracking test case
    [Documentation]  user tracking
    [Tags]  user
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep  2s
    Execute Javascript    window.scrollTo(document.body.scrollHeight, 0)
    sleep  2s
    click element  xpath://html/body/a
    sleep  2s
    click element  xpath://html/body/nav/div/ul/li[3]/a
    sleep  5s
    Close Browser






