*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Should be able to search for product
    Open Browser  https://www.amazon.com/  chrome
    Input Text  id=twotabsearchtextbox  Xbox Series X Console
    Click Button  css=#nav-search-submit-button
    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div[2]/div/div/div[1]/h2/a
    Close Browser


*** Keywords ***