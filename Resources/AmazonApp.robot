*** Settings ***
Resource  PO/Amazon/LandingPage.robot
Resource  PO/Amazon/TopNav.robot
Resource  PO/Amazon/SearchResults.robot
Resource  PO/Amazon/Product.robot
Resource  PO/Amazon/Cart.robot
Resource  PO/Amazon/SignIn.robot


*** Keywords ***
Search For Products
    LandingPage.Load Page
    LandingPage.Verify Page Loaded
    TopNav.Search for products
    SearchResults.Verify Seach Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add Product to Cart
    product.add to cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded