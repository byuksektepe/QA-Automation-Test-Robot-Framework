*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Partial "starts-with" css and xpath locators
    [Documentation]   Guide for me next projects, for non static attributes
    [Tags]    Partial Locators    Starts-With

    # xpath=//div[@id='Sumbit-5675416'] a number is a changeable value
    Click Element    xpath=//div[starts-with(@id, 'Submit')]
    Click Element    css=div[id^='Submit']

Partial "ends-with" css and xpath locators
    [Documentation]   Guide for me next projects, for non static attributes
    [Tags]    Partial Locators    Ends-With

    # xpath=//div[@id='5675416-Sumbit'] a number is a changeable value
    Click Element    xpath=//div[ends-with(@id, 'Submit')]
    Click Element    css=div[id$='Submit']

Partial "contains" css and xpath locators
    [Documentation]   Guide for me next projects, for non static attributes
    [Tags]    Partial Locators    Contains

    # xpath=//div[@id='5675416-Sumbit-9822093'] a number is a changeable value
    Click Element    xpath=//div[contains(@id, 'Submit')]
    Click Element    css=div[id*='Submit']