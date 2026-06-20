*** Settings ***
Suite Setup       Launch Application
Suite Teardown    Close Application
Resource    ../../resources/keywords/ui_keywords.resource

*** Test Cases ***
TC_UI_POSITIVE_09:Open Movie Details
    [Tags]    P0    MovieDetails    Positive
    Open First Movie Details
    Verify Movie Details Page Opened

TC_UI_POSITIVE_10:Verify Movie Information
    [Tags]    P0    MovieDetails    Positive
    Open First Movie Details
    Verify Movie Information Displayed

TC_UI_POSITIVE_11:Browser Back Navigation
    [Tags]    P1    MovieDetails    Positive
    Open First Movie Details
    Go Back
    Verify Movie List Page Displayed
