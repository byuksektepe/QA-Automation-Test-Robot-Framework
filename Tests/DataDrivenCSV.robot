*** Settings ***
Library  SeleniumLibrary
Resource    ../Data/GlobalVariables.robot
Resource    ../Resources/DataManager.robot

*** Variables ***


*** Test Cases ***

Call Data Manager and Get CSV Data NOLONGER SUPPORT
    [Tags]    NO557-F    Get CSV Data
    ${LoginData} =    DataManager.Get CSV Data    ${USER_CSV_PATH}
