*** Variables ***
# Browser
${BROWSER}                chrome
${HEADLESS}               False

# URLs
${UI_URL}                 https://tmdb-discover.surge.sh/
${API_BASE_URL}           https://tmdb-discover.surge.sh/

# TMDB API Key
${API_KEY}                add494e96808c55b3ee7f940c9d5e5b6

# Timeouts
${IMPLICIT_WAIT}          5s
${EXPLICIT_WAIT}          10s

# PAGE RELATED LOCATORS
${PAGE_TITLE_TEXT}    Discover

# Menu Text
${POPULAR_MENU}    Popular
${TREND_MENU}    Trend
${NEWEST_MENU}    Newest
${TOP_RATED_MENU}    Top rated

# Discover Options Text
${DISCOVER_OPTIONS}           DISCOVER OPTIONS
${CONTENT_TYPE_MOVIE}    Movie
${CONTENT_TYPE_TV_SHOWS}    TV Shows
${GENRE_ACTION}             Action
${GENRE_COMEDY}             Comedy
${GENRE_THRILLER}             Thriller
${HALF_STAR_RATING}    0.5
${ONE_STAR_RATING}        1
${ONE_AND_HALF_STAR_RATING}    1.5
${TWO_STAR_RATING}    2
${TWO_AND_HALF_STAR_RATING}    2.5
${THREE_STAR_RATING}    3
${THREE_AND_HALF_STAR_RATING}    3.5
${FOUR_STAR_RATING}    4
${FOUR_AND_HALF_STAR_RATING}    4.5
${FIVE_STAR_RATING}    5

# Testdata for Search Movie
${VALID_MOVIE_FULL_NAME_TEXT}    Batman
${PARTIAL_MOVIE_NAME}    Bat
${LOWERCASE_MOVIE_NAME}    batman
${UPPERCASE_MOVIE_NAME}    BATMAN
${VALID_MOVIE_NAME_NUMERIC}    123
${SPECIAL_CHARACTER_TEXT}    *#*~*~!$\*{}*()
${INVALID_MOVIE_NAME_SPACE}    ${SPACE}
${INVALID_MOVIE_NAME_500_CHARS}    QulpOFFHvFlH328sTuvMPzPC260BsjnYxYm7boWQfwMUGbd2miYoetrwwvoVXqKRlmIyR8X9HMO4TXKRArGCcZ8iDmWDgauE6TvC9JigjzYwbSnGqzDXiT7m033V0bBk0l3a4LwlTfXUujBCbwuSbqnOXDQ4geqwzElYH1g7Iph3PfMRIe3VQx7V0TVXgvezEmV6DetoPtHKWYimLluF0arbrxfNcUz1QFnwOn886hwIOtgsG0U3MaFm4Dk3yo3JbSlQPEUCRuOlDLogwg9eGsKXSxZmMZy2WjzmcD6gQambDxuNGet8QaYtlY5XmnPYJS9FgwmXJKvBdlh0IS2dU1T7bN8LbAlmQ5F8CKNOqw7pPHxQ5oiKxw56QUE2OEqxbgkdIj2FQEQQiAYOFz0xgUbPe4PjPTwB5xGvFrSEcEfK1hfme0l8SJALpjTsrV6vnTGraKgH71cafIPP9ECAZCYFoDLFDz1f7MISyKUksiqHBHrvlQjz
