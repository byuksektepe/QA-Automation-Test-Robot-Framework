*** Settings ***
Documentation  This is some basic info about whole suite
Library  SeleniumLibrary

Resource  Resources/Common.robot
Resource  Resources/AmazonApp.robot

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  https://www.amazon.com/  chrome
    Close Browser


*** Keywords ***