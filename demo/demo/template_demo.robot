*** Settings ***
Resource    ../resources/user_keywords.robot
Resource    ../resources/configs.robot

Test Template  Test Template By Get User Account

*** Keywords ***
Test Template By Get User Account
    [Arguments]  ${type}
    ${account}  Get User Account  ${type}
    Log  ${account}
    ${id}  Get From Dictionary  ${account}  id
    Log  ${id}
    ${token}  Get From Dictionary  ${account}  token
    Log  ${token}


*** Test Cases ***   type
Test a1  a1
Test a2  a2
Test a3  a3
Test a4  a4
Test a5  a5