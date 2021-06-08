*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources Files/loginpage_fv.robot
Documentation  Basic Login Check


*** Variables ***
${Application_URL}   http://demo.nopcommerce.com
${Browser_App}  edge




*** Test Cases ***

Test Case 002
    [Documentation]  Testcase to validate basic login
    [Tags]  logincheck


    Set Screenshot Directory  Screenshots

    #Browser initiation
    Navigate Browser    ${Application_URL}  chrome

    Click Link  xpath://a[contains(text(),'Log in')]
    Scroll Element Into View  xpath://button[contains(text(),'Register')]
    Capture Element Screenshot  xpath://button[contains(text(),'Register')]
    Click Button  xpath://button[contains(text(),'Register')]
    Select Radio Button     Gender  M
    Input Text  id:FirstName    abcdeee
    Input Text  id:LastName     jdsfsjdf
    Select From List By Label   DateOfBirthDay      7
    Select From List By Label   DateOfBirthMonth      January
    Select From List By Label   DateOfBirthYear      1987
    Input Text  id:Email     jdsfsjdf@gmail.com
    Input Text  id:Company     Company01
    Input Password  id:Password     Testing@143
    Input Password  id:ConfirmPassword     Testing@143
    Click Button  id:register-button
    Sleep  3
    Page Should Contain Element     xpath://h1[contains(text(),'Register')]
    Page Should Contain Element   xpath://div[contains(text(),'Your registration completed')]



    [Teardown]
    Close Browser


*** Keywords ***
