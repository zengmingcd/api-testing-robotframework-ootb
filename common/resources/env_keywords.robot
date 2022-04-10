*** Settings ***
Resource  configs.robot


*** Keywords *** 
Get Host
    [Arguments]  ${env}
    [Documentation]  You can get the host string by "env" which is the argument in the run.sh
    [return]  ${HOST_LIST["${env}"]}

