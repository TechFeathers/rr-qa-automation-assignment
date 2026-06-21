*** Settings ***
Suite Setup       Launch Application
Suite Teardown    Close Application
Resource    ../../resources/keywords/ui_keywords.resource

*** Test Cases ***

TC_UI_POSITIVE_03:Search Movie With Full Name
    [Tags]     P0     Search    Positive
    Search Movie    ${VALID_MOVIE_FULL_NAME_TEXT}
    Verify Search Results Displayed
    [Teardown]    Clear Search Field

TC_UI_POSITIVE_04:Search Partial Movie
    [Tags]    P1    Search    Positive
    Search Movie    ${PARTIAL_MOVIE_NAME}
    Verify Search Results Displayed
    [Teardown]    Clear Search Field

TC_UI_POSITIVE_05:Search Lowercase Movie
    [Tags]    P1    Search    Positive
    Search Movie    ${LOWERCASE_MOVIE_NAME}
    Verify Search Results Displayed
    [Teardown]    Clear Search Field

TC_UI_POSITIVE_06:Search Uppercase Movie
    [Tags]    P1    Search    Positive
    Search Movie    ${UPPERCASE_MOVIE_NAME}
    Verify Search Results Displayed
    [Teardown]    Clear Search Field

TC_UI_POSITIVE_07:Search Movie Contains Only Numeric
    [Tags]    P1    Search    Positive
    Search Movie    ${VALID_MOVIE_NAME_NUMERIC}
    Verify Search Results Displayed
    [Teardown]    Clear Search Field
    
TC_UI_POSITIVE_08:Search Movie With Special Characters, Space, More than 500 Chars
    [Tags]    P1    Search    Negative
    Search Movie    ${SPECIAL_CHARACTER_TEXT}
    Verify No Results Displayed
    Clear Search Field
    Search Movie    ${INVALID_MOVIE_NAME_SPACE}
    Verify No Results Displayed
    Clear Search Field
    Search Movie    ${INVALID_MOVIE_NAME_500_CHARS}
    Verify No Results Displayed
    [Teardown]    Clear Search Field

TC_UI_NEGATIVE_09:Search Movie Which Doesn't Exist
    [Tags]    P0    Negative
    ${INVALID_MOVIE_NAME}=    Generate Random String    10
    Search Movie    ${INVALID_MOVIE_NAME}
    Verify No Results Displayed
    [Teardown]    Clear Search Field
