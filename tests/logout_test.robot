*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/login_keywords.robot
Resource    ../resources/logout_keywords.robot
Test Timeout    1 min
*** Test Cases ***

Logout Successfully
    Open Browser To Login Page
    Input Username
    Input Password
    Click Login Button
    Verify Login Successful
    Open User Dropdown
    Click Logout
    Verify Logout Success
    Close My Browser