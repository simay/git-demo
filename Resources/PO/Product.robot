*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Verify Page Loaded
    #sleep                     10s
    Wait Until Page Contains  Back to results

Add to Cart
    Click Button  id=add-to-cart-button