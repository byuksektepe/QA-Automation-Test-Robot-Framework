*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Page Should Contain    Sign-In
    Element Text Should Be  id=continue-announce   Continue
