*** Settings ***
Resource    ../Keywords/Keyword.robot
Suite Setup    open Browser and navigate to url
Suite Teardown    Close Browser

*** Test Cases ***
Verifying Amazon website homepage
    [Tags]    sanity
    Given User need to Scrolldown to the todays deals and click on the third item
    When click on any of the items and verify the price 
    Then open product details and iterate through the table
