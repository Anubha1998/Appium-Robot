*** Settings ***
Library  AppiumLibrary
*** Variables ***
${username}      anubhas
${accesskey}     JvGShZ2Bm8RdgmGFbbx4ZtbOb6DeQ8nqSvtHDZdDY7PzqaZMTq
${REMOTE_URL}      https://${username}:${accesskey}@mobile-hub.lambdatest.com/wd/hub
${TIMEOUT}          3000
*** Keywords ***
Open test app
    &{LT_Options}    Create Dictionary
    ...    isRealMobile=true
    ...    platformVersion=12
    ...    deviceName=Pixel 6
    ...    app=lt://APP101605731695982640975493
    ...    w3c=true
    ...    platformName=Android
    &{DESIRED_CAPABILITIES}    Create Dictionary
    ...    LT:Options=&{LT_Options}
    Open Application  remote_url=${REMOTE_URL}  desired_capabilities=${DESIRED_CAPABILITIES}
Close test app
    Close Application