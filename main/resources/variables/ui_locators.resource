*** Variables ***

${PAGE_TITLE}                 //p[normalize-space()='Discover']

# Menu(s)
${MENU_BUTTON}              //a[text()='<MENU-NAME>']

# Search box
${SEARCH_BOX}                 //input[@name='search']
${SEARCH_BUTTON}              xpath=//button[contains(.,'Search')]

# Discover Options Panel locators
${DISCOVER_OPTIONS_LABEL}           //div//p[normalize-space()='DISCOVER OPTIONS']

# Type
${CONTENT_TYPE_LABEL}            //p[normalize-space()='Type']
${CONTENT_TYPE_DROPDOWN}            //p[normalize-space()='Type']/following::div[contains(@class,'css-1uccc91-singleValue')][1]
${CONTENT_TYPE_DEFAULT_VALUE}             //p[text()='Type']/following::div[contains(@class,'css-1uccc91-singleValue')][1][normalize-space()='Movie']
${SELECT_CONTENT_TYPE}             //div[contains(@class,'css-yt9ioa-option') and normalize-space()='<CONTENT-TYPE>']

# Genre
${CONTENT_GENRE_LABEL}            //p[normalize-space()='Genre']
${CONTENT_GENRE_DROPDOWN}             //p[normalize-space()='Genre']/following::div[contains(@class,'css-tlfecz-indicatorContainer')][1]
${CONTENT_GENRE_DEFAULT_VALUE}             //p[text()='Genre']/following::div[contains(@class,'css-1wa3eu0-placeholder')][1][normalize-space()='Select...']
${SELECT_CONTENT_GENRE}             //div[contains(@class,'css-yt9ioa-option') and normalize-space()='<CONTENT-TYPE>']

# Start Year
${YEAR_LABEL}            //p[normalize-space()='Year']
${START_YEAR_DROPDOWN}    //p[normalize-space()='Year']/following::div[contains(@class,'css-1uccc91-singleValue')][1]
${START_YEAR_DEFAULT_VALUE}    //p[text()='Year']/following::div[contains(@class,'css-1uccc91-singleValue')][1][normalize-space()='1900']
${SELECT_START_YEAR}             //div[contains(@class,'css-yt9ioa-option') and normalize-space()='<START-YEAR>']

# End Year
${END_YEAR_DROPDOWN}    //p[normalize-space()='Year']/following::div[contains(@class,'css-1uccc91-singleValue')][2]
${END_YEAR_DEFAULT_VALUE}    //p[text()='Year']/following::div[contains(@class,'css-1uccc91-singleValue')][2][normalize-space()='2025']
${SELECT_END_YEAR}             //div[contains(@class,'css-yt9ioa-option') and normalize-space()='<END-YEAR>']



