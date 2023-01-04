*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING}=        xpath=//h1
*** Keywords ***
Login With Valid Credentials
    [Arguments]     ${Username}     ${Password}
    Fill "Email" Field     ${Username}
    Click "Continue" Button
    Fill "Password" Field     ${Password}
    Click "Signin" Button

Fill "Email" Field
    [Arguments]     ${Username}
    input text      name=email     ${Username}
Fill "Password" Field
     [Arguments]     ${Password}
     input text      name=password     ${Password}
Click "Continue" Button
    click button    id=continue
Click "Signin" Button
    log     clicking submit button
    click button    id=signInSubmit
Verify Page Loaded
    Page Should Contain Element  ${SIGNIN_MAIN_HEADING}
    Element Text Should Be       ${SIGNIN_MAIN_HEADING}  Sign in
