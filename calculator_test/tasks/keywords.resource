*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Given I have opened the herokuapp
    Go to    ${URL}

When I add 5 to 5
    Input Text    ${BOX1}    5
    Input Text    ${BOX2}    5
    Click Element    ${OPERATION_LIST}
    Select From List By Value    ${OPERATION_LIST}    plus
    List Selection Should Be    ${OPERATION_LIST}    plus
    Click Button    ${CALCULATE}

Then I should get 10 as the answer
    Page Should Contain    ${PLUS_RESULT}

When I multiply 5 by 5
    Input Text    ${BOX1}    5
    Input Text    ${BOX2}    5
    Click Element    ${OPERATION_LIST}
    Select From List By Value    ${OPERATION_LIST}    times
    List Selection Should Be    ${OPERATION_LIST}    times
    Click Button    ${CALCULATE}

Then I should get 25 as the answer
    Page Should Contain    ${MULTIPLY_RESULT}

When I subtract 5 from 5
    Input Text    ${BOX1}    5
    Input Text    ${BOX2}    5
    Click Element    ${OPERATION_LIST}
    Select From List By Value    ${OPERATION_LIST}    minus
    List Selection Should Be    ${OPERATION_LIST}    minus
    Click Button    ${CALCULATE}

Then I should get 0 as the answer
    Page Should Contain    ${SUBTRACT_RESULT}

When I divide 5 by 5
    Input Text    ${BOX1}    5
    Input Text    ${BOX2}    5
    Click Element    ${OPERATION_LIST}
    Wait Until Element Is Visible    ${PLUS}
    Select From List By Value    ${OPERATION_LIST}    divide
    List Selection Should Be    ${OPERATION_LIST}    divide
    Click Button    ${CALCULATE}

Then I should get 1 as the answer
    Page Should Contain    ${DIVIDE_RESULT}
