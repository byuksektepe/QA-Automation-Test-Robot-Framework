*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    [Arguments]    ${BROWSER}
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser