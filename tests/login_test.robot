*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/login_keywords.robot
Test Timeout    1 min
*** Test Cases ***
Login With Valid Credentials
    Open Browser To Login Page
    Input Username
    Input Password
    Click Login Button
    Verify Login Successful
    Close My Browser