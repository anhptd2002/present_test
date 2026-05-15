*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/common.robot
Resource    login_keywords.robot

*** Keywords ***
Open PIM module
    # Nhấp vào menu "PIM" để mở module PIM
    Click Element    xpath=//span[text()='PIM']
    Sleep    3s
    Wait Until Page Contains   PIM    10s
Click add employee
    # Nhấp vào nút "Add Employee" để mở form thêm nhân viên mới
    Click Element    xpath=//a[text()='Add Employee']
    Wait Until Element Is Visible
    ...    name=firstName    10s
    Sleep    3s
Input employee information
    # Nhập thông tin nhân viên vào form
    # First Name
    Input Text    name=firstName    ${FIRST_NAME}
    # Middle Name
    Input Text    name=middleName    ${MIDDLE_NAME}
    # Last Name
    Input Text    name=lastName    ${LAST_NAME}
    # Employee ID
    Input Text    
    ...  xpath=(//input[contains(@class,'oxd-input')])[5]    
    ...  ${EMPLOYEE_ID}
    Sleep    3s

Upload employee image
    # Nhấp vào nút "Choose File" để tải lên ảnh đại diện cho nhân viên
    Choose File    xpath=//input[@type='file']    ${IMAGE_PATH}
    Sleep    3s

Enable create login details
    # Kích hoạt tùy chọn "Create Login Details" để tạo tài khoản đăng nhập cho nhân viên
    Click Element    xpath=//span[contains(@class,'oxd-switch-input')]
    Sleep    3s
Input login details
    # Nhập thông tin đăng nhập cho nhân viên
    # Username
    Input Text
    ...    xpath=(//input[@class='oxd-input oxd-input--active'])[3]
    ...    ${USERNAME_EMPLOYEE}
    Sleep    3s
    # Password
    Input Text
    ...    xpath=(//input[@type='password'])[1]
    ...    ${PASSWORD_EMPLOYEE}
    Sleep    3s
    # Confirm Password
    Input Text
    ...    xpath=(//input[@type='password'])[2]
    ...    ${PASSWORD_EMPLOYEE}
    Sleep    3s
Click save button
    # Nhấp vào nút "Save" để lưu thông tin nhân viên mới
    Click Element    xpath=//button[@type='submit']
    Sleep    3s
Verify employee added successfully
    # Xác minh rằng nhân viên đã được thêm thành công bằng cách kiểm tra sự xuất hiện của tên nhân viên trên trang
    Wait Until Page Contains    Sơn MTP    20s