*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/common.robot
Resource    login_keywords.robot
Resource    employee_keywords.robot

*** Keywords ***
Open Employee List Page
    Click Element    xpath=//span[text()='PIM']
    Sleep    3s

    Wait Until Element Is Visible    xpath=//a[text()='Employee List']    timeout=10s
    Click Element    xpath=//a[text()='Employee List']
    Sleep    3s
Search Employee By Name
    Wait Until Element Is Visible    xpath=(//input[@placeholder='Type for hints...'])[1]    timeout=10s
    Input Text    xpath=(//input[@placeholder='Type for hints...'])[1]    ${EMPLOYEE_FULL_NAME}
    Sleep    3s
Click Search Button
    Click Button    xpath=//button[@type='submit']
    Sleep    3s
Verify Employee Found
    Wait Until Page Contains    ${FIRST_NAME}    timeout=10s
    Sleep    10s