*** Settings ***
Suite Setup       Launch Application
Suite Teardown    Close Application
Resource    ../../resources/keywords/ui_keywords.resource

*** Test Cases ***
TC_UI_POSITIVE_15:Verify Infinite Scroll
    [Tags]    P0    Pagination    Positive
    Get Movie Count
    Scroll To Bottom
    Verify Additional Movies Loaded

TC_UI_POSITIVE_16:Verify No Duplicate Movies
    [Tags]    P1    Pagination    Positive
    Scroll Through Multiple Pages
    Verify No Duplicate Movies Displayed
