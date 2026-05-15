*** Settings ***
Library    SeleniumLibrary

Resource    ../variables/common.robot
Resource    ../resources/login_keywords.robot
Resource    ../resources/search_employee_keywords.robot
Resource    ../resources/edit_employee_keywords.robot

*** Test Cases ***

Edit Employee Information
    Open Browser To Login Page
    Input Username
    Input Password
    Click Login Button
    Verify Login Successful
    Open Employee List Page
    Search Employee By Name
    Click Search Button
    Open Employee Details
    Edit Employee First Name
    Save Employee Information
    Verify Employee Updated
    Close Browser