*** Settings ***
Library  SeleniumLibrary

*** Keywords ***



*** Variables ***
${url}  http://127.0.0.1:5000/
${email}  abc@gmail.com
${password}  123

*** Test Cases ***

user sign up test case
    [Documentation]  user signup
    [Tags]  user
    open browser  ${url}  chrome
    maximize browser window
    sleep  2s
    click link  xpath://html/body/section[1]/div/ul/li[5]/a
    sleep  1s
    input text  name:firstname  abc
    sleep  1s
    input text  name:lastname  def
    sleep  1s
    input text  name:DOB  15/06/2000
    sleep  1s
    input text  name:email  ${email}
    sleep  1s
    input text  name:phone  1234567890
    sleep  1s
    Input Text  name:pass  ${password}
    sleep  1s
    Input Text  name:cnfpass  ${password}
    sleep  1s
    Click Button  xpath://html/body/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  3s

user login test case
    [Documentation]  user login
    [Tags]  user
    input text  name:email  ${email}
    sleep  1s
    Input Text  name:pass  ${password}
    sleep  1s
    Click Button  xpath://html/body/div/div/div/div/form/button
    sleep  3s

viewall products test case
    [Documentation]  view all products
    [Tags]  viewall
    switch window  title:Home Page
    click link  xpath://html/body/section[1]/div/ul/li[2]/a
    sleep  2s

add to cart test case
    [Documentation]  add to cart
    [Tags]  user
    click link  xpath://html/body/section[2]/div/div/div[2]/form/div/a
    sleep  1s
    click link  xpath://html/body/div/ul/li[1]/a
    sleep  1s
    click link  xpath://html/body/div/ul/li[2]/a
    sleep  1s
    click link  xpath://html/body/div/ul/li[3]/a
    sleep  1s
    click link  xpath://html/body/div/ul/li[4]/a
    sleep  1s
    click link  xpath://html/body/div/ul/li[5]/a
    sleep  1s
    click link  xpath://html/body/div/ul/li[6]/a
    sleep  1s
    click link  xpath://html/body/section[2]/div/div/div[1]/form/div/a
    sleep  1s

cart test case
    [Documentation]  cart
    [Tags]  user
    click link  xpath://html/body/section[1]/div/ul/li[3]/a
    sleep  2s

checkout test case
    [Documentation]  checkout
    [Tags]  user
    click link  xpath://html/body/a
    sleep  2s

Payment test case
    [Documentation]  checkout
    [Tags]  user
    input text  name:name  Yash
    sleep  1s
    input text  name:product  Pune
    sleep  1s
    input text  name:email  abc@gmail.com
    sleep  1s
    click button  xpath://html/body/div/form/div[5]/button
    sleep  2s

Instamojo test case
    [Documentation]  Instamojo
    [Tags]  user
    Input text  xpath://html/body/div[3]/div[2]/div/div/div/div/div[2]/div/div/div/div[2]/div/div/div/div/form/div/div/ul/li[3]/div[2]/div/input  7350965600
    sleep  2s
    click button  xpath://html/body/div[3]/div[2]/div/div/div/div/div[2]/div/div/div/div[2]/div/div/div/div/form/div/div/ul/li[5]/div/button
    sleep  2s

card test case
    [Documentation]  card
    [Tags]  user
    click link  xpath://html/body/div[4]/div[2]/div/div/div/div/div[2]/div/div/div/div[2]/div/div/div/div/div[2]/div/div/ul/li[1]/a
    sleep  1s
    Input text  name:account_number  4242 4242 4242 4242
    sleep  1s
    Input text  name:expiry_month  12
    sleep  1s
    Input text  name:expiry_year  2028
    sleep  1s
    Input text  name:security_code  111
    sleep  1s
    click button  xpath://html/body/div/div/form/div[1]/button[2]
    sleep  2s
    Input text  name:txtPassword  1221
    sleep  2s
    click element  xpath://html/body/form/table/tbody/tr[16]/td/div[1]/input[1]
    sleep  3s
    click element  xpath://html/body/div/button/a
    sleep  2s
    close Browser