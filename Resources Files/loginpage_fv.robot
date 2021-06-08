*** Settings ***
Library  SeleniumLibrary







*** Keywords ***
Navigate Browser
    [Arguments]     ${arg1}     ${arg2}
    open browser  ${arg1}   ${arg2}
    #open browser    ${Application_URL}  ${Browser_App}
    Sleep  3
    Maximize Browser Window