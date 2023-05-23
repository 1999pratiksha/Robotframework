*** Settings ***
Library    RPA.Browser.Selenium
Library    RPA.Desktop
Resource    ../Variables/Variables.robot
*** Keywords ***
open Browser and navigate to url
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window

User need to Scrolldown to the todays deals and click on the third item
    Wait Until Element Is Visible    ${Todaydeals}
    Scroll Element Into View    ${Todaydeals}
    Click Element When Visible    ${Product}

click on any of the items and verify the price  
    Wait Until Element Is Visible    ${Product1}
    ${price1}    Get Text    ${price}
    Click Element When Visible    ${Product1}
    Wait Until Element Is Visible    ${Actualprice}
    ${price2}    Get Text    ${Actualprice}
    Should Be Equal    ${price1}    ${price2}

open product details and iterate through the table 
    Scroll Element Into View    ${Productdescription}
    Click Element When Visible    ${Productdescription}
    Wait Until Element Is Visible    ${Technicaldeatils}
    ${Row_count}    Get Element Count    ${Row}
    FOR    ${Row_value}    IN RANGE    1    ${Row_count}+1
        ${Row_key}=    Get Text    xpath://*[@id="productDetails_techSpec_section_1"]/tbody/tr[${Row_value}]/th
        IF   "${Row_key}" == "${Actual_Key}"
        ${columnvalue}=    Get Text    xpath://*[@id="productDetails_techSpec_section_1"]/tbody/tr[${Row_value}]/td
        Log To Console    ${Row_key}
        Log To Console    ${columnvalue}   
        END
        Exit For Loop
    END