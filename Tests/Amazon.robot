*** Settings ***
Documentation  This is some basic info about the whole suite
# notice we're no longer referencing the Selenium2Library in our script!
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/AmazonApp.robot  # necessary for lower level keywords in test cases
Test Setup     Common.Begin Web Test
Test Teardown  Common.End Web Test

# Copy/paste the below line to Terminal window to execute
# robot -d results tests/amazon.robot
*** Variables ***
${BROWSER}=     chrome
${START_URL}=   http://www.amazon.com
${SEARCH_TERM}=     Ferrari 458
${LOGIN_EMAIL}=     simaydurukan@gmail.com
${LOGIN_PASSOWORD}=     Simay1990.

*** Test Cases ***
Should be able to login
    [Tags]  Current
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout
    AmazonApp.Login     ${LOGIN_EMAIL}      ${LOGIN_PASSOWORD}
Logged out user should be able to search for products
    [Tags]  Smoke
    AmazonApp.Search for Products

Logged out user should be able to view a product
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user should be able to add product to cart
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user should be asked to sign in to check out
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout
