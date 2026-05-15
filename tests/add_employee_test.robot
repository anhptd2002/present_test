*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/login_keywords.robot
Resource    ../resources/employee_keywords.robot

*** Test Cases ***
Add Full Employee Information Successfully
    Open Browser To Login Page
    Input Username
    Input Password
    Click Login Button
    Verify Login Successful
    Open PIM module
    Click add employee
    Input employee information
    Upload employee image
    Enable create login details
    Input login details
    Click save button
    Verify employee added successfully
    Close Browser  