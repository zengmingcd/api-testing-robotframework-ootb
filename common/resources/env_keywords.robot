*** Settings ***
Resource  configs.robot
Library  Collections
Library  RequestsLibrary
# Library  json


*** Keywords *** 
Get Host
    [Arguments]  ${env}
    [Documentation]  You can get the host string by "env" which is the argument in the run.sh
    ${env_key}  Set Variable If
    ...  "${env}"=="${None}"  ${DEFAULT_HOST_KEY}
    ...  "${env}"==""  ${DEFAULT_HOST_KEY}
    ...  ${env}
    # Log  ${env}
    [Return]  ${HOST_LIST["${env}"]}

Get User Account
    [Arguments]  ${type}
    [Documentation]  You can get different type user account
    # Log  ${USER_ACCOUNT_LIST}
    ${user_account_list_json}=  Evaluate  json.loads('''${USER_ACCOUNT_LIST}''')  json
    # Log  ${user_account_list_json}
    # Log  ${type}
    ${account}  Get From Dictionary  ${user_account_list_json}  ${type}
    [Return]  ${account}

