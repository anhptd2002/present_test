*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/common.robot
Resource    login_keywords.robot

*** Keywords ***
Open User Dropdown
    # Nhấp vào biểu tượng người dùng để mở dropdown
    Click Element    xpath=//span[@class='oxd-userdropdown-tab']
    Sleep    3s
    Wait Until Element Is Visible    
    ...    xpath=//a[text()='Logout']    
    ...    10s
    Sleep    3s
Click Logout
    # Nhấp vào tùy chọn "Logout" trong dropdown
    Click Element    xpath=//a[text()='Logout']
    Sleep    3s
Verify Logout Success
    # Xác nhận rằng người dùng đã được đăng xuất thành công
    Wait Until Element Is Visible    
    ...    xpath=//h5[text()='Login']    
    ...    10s
    Page Should Contain    Login