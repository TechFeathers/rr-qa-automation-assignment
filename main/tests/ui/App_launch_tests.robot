*** Settings ***
Suite Setup       Launch Application
Suite Teardown    Close Application
Resource    ../../resources/keywords/ui_keywords.resource

*** Test Cases ***

TC_UI_POSITIVE_01:Verify Application Loads Successfully with page title, home page navigation
    [Documentation]    Verify application launches successfully
    [Tags]    P0    Smoke    Launch    Positive    ak_test
    Verify Home Page Loaded
    Verify Page Title
    Goto Filter    ${FILTER_TREND_TEXT}
    Goto TMDB Home Page By Page Title

TC_UI_POSITIVE_03:Verify Movie Cards Are Displayed
    [Documentation]    Verify movie cards display poster, title and rating
    [Tags]    P0    Smoke    Launch    Positive
    Verify Home Page Loaded
    Verify Movie Cards Displayed