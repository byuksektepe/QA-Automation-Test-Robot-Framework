*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Seach Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Link  ${PRODUCT_LINK}
