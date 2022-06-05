*** Settings ***
Documentation  Amazon.com top navigation
Library  SeleniumLibrary


*** Keywords ***
Search for products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  id=twotabsearchtextbox

Submit Search
    Click Button  css=#nav-search-submit-button