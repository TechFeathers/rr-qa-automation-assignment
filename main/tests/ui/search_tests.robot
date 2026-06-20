*** Settings ***
Suite Setup       Launch Application
Suite Teardown    Close Application
Resource    ../../resources/keywords/ui_keywords.resource

*** Test Cases ***

TC_UI_POSITIVE_04:Search Movie
    [Tags]     P0     Search    Positive
    Search Movie    ${VALID_MOVIE}
    Verify Search Results Displayed

TC_UI_POSITIVE_05:Search Partial Movie
    [Tags]    P1    Search    Positive
    Search Movie    ${PARTIAL_MOVIE}
    Verify Search Results Displayed

TC_UI_POSITIVE_06:Search Lowercase Movie
    Search Movie    ${LOWERCASE_MOVIE}
    Verify Search Results Displayed

TC_UI_POSITIVE_07:Search Uppercase Movie
    [Tags]    P1    Search    Positive
    Search Movie    ${UPPERCASE_MOVIE}
    Verify Search Results Displayed

TC_UI_POSITIVE_08:Clear Search Field
    [Tags]    P1    Search    Positive
    Search Movie    ${VALID_MOVIE}
    Clear Search Field
    Verify Default Movie List Displayed

TC_UI_NEGATIVE_28:Search Invalid Movie
    [Tags]    P0    Negative
    Search Movie    ${INVALID_MOVIE}
    Verify No Results Displayed

TC_UI_NEGATIVE_29:Search Special Characters
    [Tags]    P1    Negative
    Search Movie    ${SPECIAL_CHARACTER_TEXT}
    Verify Application Handles Invalid Search Gracefully