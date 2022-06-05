*** Settings ***
Documentation  This is some basic info about whole suite

Resource  ../Resources/Common.robot
Resource  ../Resources/AmazonApp.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke
    AmazonApp.Search for Products

Logged out user can view a product
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user can add product to cart
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user must sign in to check out
    [Tags]  LoggedOut
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout



