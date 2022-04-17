*** Settings ***
Resource    ../resources/user_keywords.robot
Resource    ../resources/configs.robot

*** Test Cases ***

# Quick Get Request Test
#     ${response}=    GET  https://www.google.com/search

# Quick Get Request With Parameters Test
#     ${response}=    GET  https://www.google.com/search  params=query=ciao  expected_status=200
#     Log    ${response}

# Quick Get A JSON Body Test
#     ${response}=    GET  https://jsonplaceholder.typicode.com/posts/1
#     Should Be Equal As Strings    1  ${response.json()}[id]

Test Get Host
    Log  ${CURDIR}
    ${host}  Get Host  ${ENV}
    Log    ${host}

Test Get Account
    ${account}  Get User Account  a1
    Log  ${account}
    ${id}  Get From Dictionary  ${account}  id
    Log  ${id}
    ${token}  Get From Dictionary  ${account}  token
    Log  ${token}

Test Template Get Account
    [Template]  Get User Account
    a1
    a2
    a3
    a4
