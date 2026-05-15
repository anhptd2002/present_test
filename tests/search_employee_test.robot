*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/common.robot
Resource    ../resources/login_keywords.robot
Resource    ../resources/search_employee_keywords.robot

*** Test Cases ***
Search Employee By Name
    Open Browser To Login Page
    Input Username
    Input Password
    Click Login Button
    Verify Login Successful
    Open Employee List Page
    Search Employee By Name
    Click Search Button
    Verify Employee Found
    Close Browser