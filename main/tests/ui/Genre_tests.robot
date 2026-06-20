*** Settings ***
Suite Setup       Launch Application
Suite Teardown    Close Application
Resource    ../../resources/keywords/ui_keywords.resource

*** Test Cases ***

TC_UI_POSITIVE_12:Filter By Genre
    [Tags]    P0    Genre    Positive
    Select Genre    ${GENRE_ACTION_TEXT}
    Verify Movies Are Filtered By Genre    Action

TC_UI_POSITIVE_13:Change Genre
    [Tags]    P1    Genre    Positive
    Select Genre    ${GENRE_ACTION_TEXT}
    Select Genre    ${GENRE_COMEDY_TEXT}
    Verify Movies Are Filtered By Genre    ${GENRE_COMEDY_TEXT}

TC_UI_POSITIVE_14:Remove Genre Filter
    [Tags]    P1    Genre    Positive
    Select Genre    ${GENRE_ACTION_TEXT}
    Clear Genre Filter
    Verify All Movies Displayed
