*** Settings ***
Documentation    Use this file to get data from external files
Library    ../Libraries/csv_read.py

*** Keywords ***
Get CSV Data
    [Arguments]    ${filepath}
    ${Data} =    read csv file   ${filepath}