*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load Page
    [Arguments]  ${START_URL}
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Hello, Sign in