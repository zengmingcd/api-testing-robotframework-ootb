*** Variables ***
# Host list
&{HOST_LIST}  
...  prod="www.google.com"
...  test="www.amazon.com"
...  other="www.microsoft.com"
${DEFAULT_HOST_KEY}  prod


# User Account
${USER_ACCOUNT_LIST}  {
    ...  "a1":{"id":1,"token":"1"},
    ...  "a2":{"id":2,"token":"2"},
    ...  "a3":{"id":3,"token":"3"},
    ...  "a4":{"id":4,"token":"4"}}