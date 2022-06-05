*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load Page
    Go To  https://amazon.com
Verify Page Loaded
    Wait Until Page Contains  You are on amazon.com