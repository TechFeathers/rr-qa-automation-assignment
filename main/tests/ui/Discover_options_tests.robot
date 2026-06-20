*** Settings ***
Suite Setup       Launch Application
Suite Teardown    Close Application
Resource    ../../resources/keywords/ui_keywords.resource

*** Test Cases ***

TC_UI_POSITIVE_10:Filter By Type
    [Tags]    P0    Genre    Positive
    Page Should Contain    ${DISCOVER_OPTIONS}
    Select Content Type    ${CONTENT_TYPE_TV_SHOWS}
    Verify All Movies Displayed
    Select Content Type    ${CONTENT_TYPE_TV_SHOWS}
    Verify All Movies Displayed
    [Teardown]    Goto TMDB Home Page By Page Title

TC_UI_POSITIVE_11:Filter By Genre
    [Tags]    P0    Genre    Positive
    Select Content Genre    ${GENRE_ACTION}
    Verify Movies Are Filtered By Genre    ${GENRE_ACTION}
    Select Content Genre    ${GENRE_THRILLER}
    Verify Movies Are Filtered By Genre    ${GENRE_THRILLER}
    [Teardown]    Goto TMDB Home Page By Page Title

TC_UI_POSITIVE_12:Remove Genre Filter
    [Tags]    P1    Genre    Positive
    Select Content Genre    ${GENRE_ACTION}
    Clear Genre Filter
    Verify All Movies Displayed
    [Teardown]    Goto TMDB Home Page By Page Title

TC_UI_POSITIVE_13:Select Movies Between Years
    [Tags]    P1    Genre    Positive
    Select Year Duration    1999    2003
    Verify All Movies Displayed
    [Teardown]    Goto TMDB Home Page By Page Title

TC_UI_POSITIVE_14:Select Movies With Minimum Rating
    [Tags]    P1    Genre    Positive    ak_test
    Select Star Ratings    4
    Sleep    7s
