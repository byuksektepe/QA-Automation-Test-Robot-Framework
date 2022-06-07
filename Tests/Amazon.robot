*** Settings ***
Documentation  This is some basic Amazon.com test

Resource  ../Resources/Common.robot
Resource  ../Resources/AmazonApp.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${BROWSER} =    chrome
${START_URL} =    https://amazon.com
${SEARCH_TERM} =    Xbox Series X Console

*** Test Cases ***
Logged out user can search for products
    [Tags]  Search Product
    AmazonApp.Search for Products

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



