*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/common.robot
Resource    login_keywords.robot
Resource    employee_keywords.robot
*** Keywords ***
Open Employee Details
    Wait Until Element Is Visible    xpath=(//div[@role='row'])[2]    timeout=10s
    Click Element    xpath=(//div[@role='row'])[2]
    Sleep    3s
Edit Employee First Name
    Wait Until Element Is Visible    name=firstName    timeout=10s
    Click Element    name=firstName
    # Nhấn Ctrl + A để bôi đen toàn bộ text cũ
    Press Keys    name=firstName    CTRL+a
    # Nhấn Backspace để xóa sạch
    Press Keys    name=firstName    BACKSPACE
    Sleep    1s
    # Nhập dữ liệu mới
    Input Text    name=firstName    Son
    Sleep    3s
Save Employee Information
    Wait Until Element Is Visible    xpath=(//button[@type='submit'])[1]    timeout=10s
    Click Button    xpath=(//button[@type='submit'])[1]
    Sleep    3s
Verify Employee Updated
    Wait Until Page Contains    Successfully Updated    timeout=10s