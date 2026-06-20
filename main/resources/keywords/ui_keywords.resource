*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     OperatingSystem
Library     String
#Library    RequestsLibrary

Resource    ../variables/ui_locators.resource
Resource    ../variables/api_endpoints.resource

Resource    ui_keywords.resource
Resource    api_keywords.resource

Resource    ../testdata/api_data.resource
Resource    ../testdata/search_data.resource
*** Keywords ***

Launch Application
    Open Browser    ${UI_URL}    ${BROWSER}
    Maximize Browser Window

Close Application
    Close Browser

Create TMDB Session
    Create Session    tmdb    ${API_BASE_URL}


Verify Home Page Loaded
    Wait Until Page Contains Element    ${SEARCH_BOX}    10s

Verify Page Title
    ${title}=    Get Title
    Should Be Equal    ${title}    ${PAGE_TITLE_TEXT}

Goto Filter
    [Arguments]    ${filter_name}
    Log To Console    Navigating to filter: ${filter_name}
    ${filter_locator}=    Replace String    ${FILTER_BUTTON}    <FILTER-NAME>    ${filter_name}
    Click Element    ${filter_locator}
    Sleep    2s

Goto TMDB Home Page By Page Title
    Log To Console    Navigating to TMDB home page using Page Title
    Click Element    ${PAGE_TITLE}
    Sleep    2s

Search Movie
    [Arguments]    ${movie_name}
    Click Element    ${SEARCH_BOX}
    Input Text     ${SEARCH_BOX}    ${movie_name}
    Press Keys     ${SEARCH_BOX}    ENTER

Get First Movie Title
    ${title}=    Get Text    ${FIRST_MOVIE_TITLE}
    RETURN    ${title}

Verify Movie Cards Displayed
    Wait Until Element Is Visible    ${MOVIE_CARD}          timeout=15s
    Wait Until Element Is Visible    ${MOVIE_TITLE}         timeout=15s
    Wait Until Element Is Visible    ${MOVIE_RATING}        timeout=15s

    ${count}=    Get Element Count    ${MOVIE_CARD}
    Should Be True    ${count} > 0


Select Genre
    [Arguments]    ${genre_name}
    Log To Console    Selecting genre: ${genre_name}
    Click Element    ${GENRE_DROPDOWN}
    ${genre_name}    Replace String    ${SELECT_GENRE}    <GENRE-NAME>    ${genre_name}
    Click Element    ${genre_name}
    Sleep    2s

Verify Movies Are Filtered By Genre
    [Arguments]    ${genre_name}

    Log To Console    Verifying movies filtered for genre: ${genre_name}

    # Future implementation:
    # Validate genre badge/text
    # Validate API response
    # Validate movie cards belong to selected genre

Verify Filtered Movies Displayed

    Log To Console    Verifying filtered movie results

    # Example validations
    # Wait Until Element Is Visible    ${MOVIE_CARD}
    # ${count}=    Get Element Count    ${MOVIE_CARD}
    # Should Be True    ${count} > 0

    Pass Execution    Placeholder - Implement after locators identified

Clear Genre Filter

    Log To Console    Clearing genre filter

    # Example implementation
    # Click Element    ${CLEAR_GENRE_FILTER}

    Sleep    2s

Verify Default Movie List Displayed

    Log To Console    Verifying default movie list displayed

    # Example validations
    # Wait Until Element Is Visible    ${MOVIE_CARD}
    # ${count}=    Get Element Count    ${MOVIE_CARD}
    # Should Be True    ${count} > 0

    Pass Execution    Placeholder - Implement after locators identified

Verify All Movies Displayed

    Log To Console    Verifying all movies displayed after removing filter

    # Future implementation:
    # Compare movie count before/after filter removal

# For movie_details_tests.robot File
Open First Movie Details
    Log To Console    Opening first movie details page

    # Example implementation
    # Wait Until Element Is Visible    ${FIRST_MOVIE_CARD}
    # Click Element    ${FIRST_MOVIE_CARD}

    Sleep    2s


Verify Movie Details Page Opened
    Log To Console    Verifying movie details page opened

    # Example validations
    # Wait Until Element Is Visible    ${MOVIE_DETAILS_CONTAINER}
    # Element Should Be Visible        ${MOVIE_TITLE}

    Pass Execution    Placeholder - Implement after locators identified


Verify Movie Title Displayed
    Log To Console    Verifying movie title displayed

    # Wait Until Element Is Visible    ${MOVIE_TITLE}
    # ${title}=    Get Text    ${MOVIE_TITLE}
    # Should Not Be Empty    ${title}

    Pass Execution    Placeholder - Implement after locators identified


Verify Movie Overview Displayed
    Log To Console    Verifying movie overview displayed

    # Wait Until Element Is Visible    ${MOVIE_OVERVIEW}
    # ${overview}=    Get Text    ${MOVIE_OVERVIEW}
    # Should Not Be Empty    ${overview}

    Pass Execution    Placeholder - Implement after locators identified


Verify Movie Rating Displayed
    Log To Console    Verifying movie rating displayed

    # Wait Until Element Is Visible    ${MOVIE_RATING}
    # ${rating}=    Get Text    ${MOVIE_RATING}
    # Should Not Be Empty    ${rating}

    Pass Execution    Placeholder - Implement after locators identified


Verify Release Date Displayed
    Log To Console    Verifying release date displayed

    # Wait Until Element Is Visible    ${RELEASE_DATE}
    # ${date}=    Get Text    ${RELEASE_DATE}
    # Should Not Be Empty    ${date}

    Pass Execution    Placeholder - Implement after locators identified


Verify Movie List Page Displayed
    Log To Console    Verifying movie list page displayed

    # Wait Until Element Is Visible    ${MOVIE_CARD}
    # ${count}=    Get Element Count    ${MOVIE_CARD}
    # Should Be True    ${count} > 0

    Pass Execution    Placeholder - Implement after locators identified

Verify Movie Information Displayed
    Verify Movie Title Displayed
    Verify Movie Overview Displayed
    Verify Movie Rating Displayed
    Verify Release Date Displayed

# Pagination_tests.robot Keywords
Get Movie Count
    Log To Console    Getting current movie count

    # Example implementation
    # ${count}=    Get Element Count    ${MOVIE_CARD}
    # Set Suite Variable    ${INITIAL_MOVIE_COUNT}    ${count}

    Set Suite Variable    ${INITIAL_MOVIE_COUNT}    0


Scroll To Bottom
    Log To Console    Scrolling to bottom of page

    # Example implementation
    # Execute Javascript    window.scrollTo(0, document.body.scrollHeight)

    Sleep    3s


Verify Additional Movies Loaded
    Log To Console    Verifying additional movies loaded

    # Example implementation
    # ${new_count}=    Get Element Count    ${MOVIE_CARD}
    # Should Be True    ${new_count} > ${INITIAL_MOVIE_COUNT}

    Pass Execution    Placeholder - Implement after locators identified


Scroll Through Multiple Pages
    Log To Console    Loading multiple pages

    # Example implementation
    # FOR    ${index}    IN RANGE    1    5
    #     Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #     Sleep    2s
    # END

    Sleep    5s


Verify No Duplicate Movies Displayed
    Log To Console    Verifying duplicate movies are not present

    # Example implementation
    #
    # ${elements}=    Get WebElements    ${MOVIE_TITLE}
    # ${titles}=      Create List
    #
    # FOR    ${element}    IN    @{elements}
    #     ${title}=    Get Text    ${element}
    #     Append To List    ${titles}    ${title}
    # END
    #
    # ${unique_titles}=    Evaluate    list(set($titles))
    #
    # Length Should Be    ${titles}    ${unique_titles}

    Pass Execution    Placeholder - Implement after locators identified


Refresh Page
    Reload Page


Verify Loader Displayed
    Log To Console    Verifying loading indicator displayed

    # Example implementation
    # Wait Until Element Is Visible    ${LOADER_SPINNER}    timeout=10s

    Pass Execution    Placeholder - Implement after locators identified

# search_tests.robot Keywords

Verify Search Results Displayed

    Log To Console    Verifying search results displayed

    # Example implementation
    # Wait Until Element Is Visible    ${MOVIE_CARD}
    # ${count}=    Get Element Count    ${MOVIE_CARD}
    # Should Be True    ${count} > 0

    Pass Execution    Placeholder - Implement after locators identified


Clear Search Field

    Log To Console    Clearing search field

    # Example implementation
    # Clear Element Text    ${SEARCH_BOX}

    Sleep    1s

Verify No Results Displayed

    Log To Console    Verifying no results displayed

    # Example implementation
    #
    # ${count}=    Get Element Count    ${MOVIE_CARD}
    # Should Be Equal As Integers    ${count}    0
    #
    # OR
    #
    # Element Should Be Visible    ${NO_RESULTS_MESSAGE}

    Pass Execution    Placeholder - Implement after locators identified


Verify Application Handles Invalid Search Gracefully

    Log To Console    Verifying graceful handling of invalid search input

    # Example implementation
    #
    # Page Should Not Contain
    #    Application Error
    #
    # Page Should Not Contain
    #    Exception
    #
    # Page Should Not Contain
    #    Stack Trace

    Pass Execution    Placeholder - Implement after locators identified