*** Settings ***
Suite Setup       Launch Application
Suite Teardown    Close Application
Resource    ../../resources/keywords/ui_keywords.resource

*** Test Cases ***

Verify Application Loads Successfully With Page Title And Home Page Navigation
    [Documentation]    Verify application launches successfully
    [Tags]    P0    Smoke    Launch    Positive 
    Verify Page Title
    Validate Default Values on Discover Options Panel
    Verify Movie Cards Displayed
    Goto Menu    ${TREND_MENU}
    Verify Movie Cards Displayed
    Goto TMDB Home Page By Page Title
    Verify Movie Cards Displayed
    [Teardown]    Goto TMDB Home Page By Page Title

Verify Application Displays The Movies Cards On Clicking Different Menu(s)
    [Documentation]    Verify Application Displays The Movies Cards On Clicking Different Menu(s)
    [Tags]    P0    Smoke    Launch    Positive
    ${menus_list}    Create List    ${POPULAR_MENU}    ${TREND_MENU}    ${NEWEST_MENU}    ${TOP_RATED_MENU}
    FOR    ${menu}    IN    @{menus_list}
        Goto Menu    ${menu}
        Run Keyword And Continue On Failure    Verify Movie Cards Displayed
    END
