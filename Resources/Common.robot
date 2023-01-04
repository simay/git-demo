*** Settings ***
Library    SeleniumLibrary
Resource    ../Tests/Amazon.robot

*** Keywords ***
Begin Web Test
    Open Browser  about:blank   ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser