*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${VAR} =    200

*** Keywords ***
Some Test Keyword
    Click Button    id=button1
Some Test Keyword 2
    Click Button    id=button2

IF/ELSE Control
    [Documentation]    IF/ELSE Statement control guide
    [Tags]    IF ELSE

    Run Keyword if    ${VAR} > 150    Some Test Keyword
    Run Keyword if    ${VAR} > 150    Some Test Keyword    ELSE    Some Test Keyword 2
    Run Keyword if    ${VAR} > 150    Some Test Keyword    ELSE IF ${VAR} == 20    Some Test Keyword   ELSE    Some Test Keyword 2

    # OR

    IF  10>5    # ELSE IF    ELSE
        # Do Something
    END

LOOP Control
    [Documentation]    LOOP control guide, copied from FaustX's QA Test
    [Arguments]    ${ORDER_MAX_RANGE}    ${SET_CLICK_VAR}    ${DROPDOWN_CONTENT}    ${i}
    [Tags]    LOOP
    FOR  ${i}  IN RANGE  1      ${ORDER_MAX_RANGE}
        IF   ${i} != 5
            Click Element       ${DROPDOWN_CONTENT}\(${i})
            Run Keyword         ${SET_CLICK_VAR}
        END
    END


