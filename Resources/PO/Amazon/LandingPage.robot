*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load Page
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  You are on amazon.com