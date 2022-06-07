*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load Page
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Hello, Sign in