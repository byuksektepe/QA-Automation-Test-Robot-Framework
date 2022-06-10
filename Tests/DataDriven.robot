*** Settings ***
Library    SeleniumLibrary

*** Variables ***
&{UNREGISTERED_USER} =    name=Jhon    email=jhon@somemail.com    pass=12345    ExpectedErrorMsg=You havent sign up yet. Try different username.
&{INVALID_PASSWORD_USER} =    name=Berkant    email=highhill@somemail.com  pass=34567   ExpectedErrorMsg=Invalid password, please double check your password.
&{BLANK_CREDENTIALS_USER} =    name=#BLANK    email=#BLANK    pass=34567   ExpectedErrorMsg=Please provide email and username fields.

*** Keywords ***


*** Test Cases ***
