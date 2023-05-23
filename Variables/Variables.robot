*** Variables ***
${url}    https://www.Amazon.in
${Browser}    chrome
${Todaydeals}    xpath://h2[contains(text(),'Today’s Deals')]
${Product}    xpath://*[@class='a-unordered-list a-nostyle a-horizontal feed-carousel-shelf _deals-shoveler-v2_style_list__pjYuB']/li[3]
${Product1}    xpath://*[@class='a-unordered-list a-nostyle a-horizontal a-spacing-none']/li[2]
${price}    xpath://*[@class='a-unordered-list a-nostyle a-horizontal a-spacing-none']/li[2]/span/div/div[2]/div[4]/span/span/span[2]
${Actualprice}    xpath://*[@id="corePriceDisplay_desktop_feature_div"]/div[1]/span[2]/span[2]/span[2]
${Productdescription}    xpath://a[@id='seeMoreDetailsLink']
${Technicaldeatils}    xpath://h1[contains(text(),'Technical Details')]
${Row}    xpath://*[@id="productDetails_techSpec_section_1"]/tbody/tr
${Actual_key}    Model_Name 
