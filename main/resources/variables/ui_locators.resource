*** Variables ***
# Browser
${BROWSER}                chrome
${HEADLESS}               False

# URLs
${UI_URL}                 https://tmdb-discover.surge.sh/
#${UI_URL}                 https://www.google.com/
${API_BASE_URL}           https://api.themoviedb.org/3

# TMDB API Key
${API_KEY}                <YOUR_TMDB_API_KEY>

# Timeouts
${IMPLICIT_WAIT}          5s
${EXPLICIT_WAIT}          10s

# PAGE RELATED LOCATORS
${PAGE_TITLE_TEXT}                 Discover
${FILTER_POPULAR_TEXT}             Popular
${FILTER_TREND_TEXT}             Trend
${FILTER_NEWEST_TEXT}             Newest
${FILTER_TOP_RATED_TEXT}             Top rated
${GENRE_ACTION_TEXT}             Action
${GENRE_COMEDY_TEXT}             Comedy
${GENRE_THRILLER_TEXT}             Thriller

${PAGE_TITLE}                 //p[text()='Discover']
${SEARCH_BOX}                 //input[@name='search']
${SEARCH_BUTTON}              xpath=//button[contains(.,'Search')]
${MOVIE_CARD}                 css=.movie-card
${MOVIE_TITLE}                css=.movie-title
${NEXT_PAGE_BUTTON}           xpath=//button[contains(.,'Next')]
${PREVIOUS_PAGE_BUTTON}       xpath=//button[contains(.,'Previous')]
${GENRE_DROPDOWN}             //p[text()='Genre']/following::div[contains(@class,'css-tlfecz-indicatorContainer')][1]
${SELECT_GENRE}               xpath=//*[text()='<GENRE-NAME>']
${FILTER_BUTTON}              //a[text()='<FILTER-NAME>']
