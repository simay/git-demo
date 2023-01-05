*** Settings ***
Library  SeleniumLibrary
Resource    ../../Tests/Amazon.robot

*** Variables ***

*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Gift Cards