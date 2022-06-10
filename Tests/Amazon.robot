*** Settings ***
Documentation  This is some basic Amazon.com test

Resource  ../Resources/Common.robot
Resource  ../Resources/AmazonApp.robot
Resource    ../Data/GlobalVariables.robot
Resource    ../Resources/DataManager.robot
Test Setup    Begin Web Test    ${BROWSER}
Test Teardown    End Web Test

*** Variables ***
${BROWSER} =    chrome
${START_URL} =    https://amazon.com
${SEARCH_TERM} =    msi laptop
${PRODUCT_LINK} =    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div[2]/div/div/div[1]/h2/a

*** Test Cases ***
Logged out user can search for products
    [Tags]  Search Product
    AmazonApp.Search for Products    ${START_URL}

Logged out user can view a product
    [Tags]  View Product
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user can add product to cart
    [Tags]  Add to Cart
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user must sign in to check out
    [Tags]  User Must Sign In
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout

Call Data Manager and Get CSV Data
    [Tags]    NO557-A    Get CSV Data
    AmazonApp.Search for Products    ${START_URL}
    ${LoginData} =    DataManager.Get CSV Data    ${USER_CSV_PATH}




