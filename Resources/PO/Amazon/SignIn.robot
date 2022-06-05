*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    page should contain     Email or mobile phone number
    Element Text Should Be  id=continue-announce   Continue
