*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
# Dictionaries will set with "&" sign.
&{URL} =    dev=https://dev.faustx.com   qa=https://qa.faustx.com    prod=https://prod.faustx.com
${ENV} =    dev

*** Keywords ***
How Use Dictionaries
    [Documentation]    Dictionaries Example Test
    [Tags]    Dictionaries

    open browser  about:blank   chrome
    Go To    ${URL.${ENV}}    # OR
    Go To    ${URL.qa}
    Sleep    2s
    close browser

*** Test Cases ***
Begin Dictionaries
    [Tags]    760
    How Use Dictionaries
