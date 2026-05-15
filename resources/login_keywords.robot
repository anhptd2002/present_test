*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/common.robot

*** Keywords ***
Open Browser To Login Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --ignore-certificate-errors
    Call Method    ${options}    add_argument    --allow-insecure-localhost
    # Mở Chrome 
    Open Browser   ${URL}   ${BROWSER}    options=${options}
    # Phóng to cửa sổ trình duyệt
    Maximize Browser Window
    # Chờ cho đến khi phần tử có id "username" xuất hiện trên trang
    Wait Until Element Is Visible    name=username    timeout=10s
Input Username
    # Nhập tên người dùng vào trường có name "username"
    Input Text    name=username    ${USERNAME}
    Sleep    1s
Input Password
    # Nhập mật khẩu vào trường có name "password"
    Input Text    name=password    ${PASSWORD}
    Sleep    1s
Click Login Button
    # Nhấp vào nút đăng nhập có name "Login"
    Click Element    xpath=//button[@type='submit']
    Sleep    1s  
Verify Login Successful
    # Verify login thành công bằng cách kiểm tra sự xuất hiện chữ "Dashboard" trên trang
    Wait Until Page Contains    Dashboard    timeout=10s
    
    Page Should Contain    Dashboard
    Sleep    1s
Close My Browser
    # Đóng trình duyệt
    Close Browser