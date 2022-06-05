*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Should be able to search for product
    Open Browser  https://www.amazon.com/  chrome
    Sleep  3s
    Input Text  id=twotabsearchtextbox  Xbox One X
    sleep  3s
    Click Button  css=#nav-search-submit-button
    Close Browser


*** Keywords ***