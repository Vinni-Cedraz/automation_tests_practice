*** Keywords ***
Given that I want to search for the product
    Input Text    ${SEARCH_BOX}    ${PRODUCT}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${SHOWCASE}    ${TIMEOUT}

When I add the product to the cart and proceed to checkout
    Mouse Over    ${PRODUCT_NAME}
    Wait Until Element Is Visible    ${ADD_TO_CART}    ${TIMEOUT}
    Click Element    ${ADD_TO_CART}
    Wait Until Element Is Visible    ${CHECKOUT}    ${TIMEOUT}
    Click Element    ${CHECKOUT}
    Wait Until Element Is Visible    ${CHECKOUT_HREF}    ${TIMEOUT}
    Click Element    ${CHECKOUT_HREF}

And create my account on the website
    Wait Until Element Is Visible    ${EMAIL_CREATE}    ${TIMEOUT}
    Input Text    ${EMAIL_CREATE}    ${EMAIL}
    Click Button    ${EMAIL_CREATE_BUTTON}
    Wait Until Element Is Visible    ${GENDER}    ${TIMEOUT}
    Click Element    ${GENDER}
    Input Text    ${INPUT_FIRSTNAME}    ${FIRSTNAME}
    Input Text    ${INPUT_LASTNAME}    ${LASTNAME}
    Input Text    ${INPUT_PSWRD}    ${PASSWORD}
    Click Element    ${DAYS}
    Wait Until Element Is Visible    ${DAYS_OPTION}
    Select From List By Value    ${DAYS}    ${BIRTH_DAY}
    List Selection Should Be    ${DAYS}    ${BIRTH_DAY}
    Click Element    ${MONTHS}
    Wait Until Element Is Visible    ${MONTHS_OPTION}
    SeleniumLibrary.Select From List By Value    ${MONTHS}    ${BIRTH_MONTH}
    List Selection Should Be    ${MONTHS}    ${BIRTH_MONTH}
    Click Element    ${YEARS}
    Wait Until Element Is Visible    ${YEARS_OPTION}
    Select From List By Value    ${YEARS}    ${BIRTH_YEAR}
    List Selection Should Be    ${YEARS}    ${BIRTH_YEAR}
    Input Text    ${INPUT_COMPANY}    ${COMPANY}
    Input Text    ${INPUT_ADDRESS}    ${ADDRESS_1}
    Input Text    ${INPUT_ADDRESS2}    ${ADDRESS_2}
    Input Text    ${INPUT_CITY}    ${TOWN}
    Click Element    ${STATE_LIST}
    Wait Until Element Is Visible    ${STATE_OPTION}    ${TIMEOUT}
    Select From List By Value    ${STATE_LIST}    ${STATE_VALUE}
    List Selection Should Be    ${STATE_LIST}    ${STATE_VALUE}
    Input Text    ${INPUT_POSTCODE}    ${POSTCODE}
    Click Element    ${COUNTRY_LIST}
    Wait Until Element Is Visible    ${COUNTRY_OPTION}
    Select From List By Value    ${COUNTRY_LIST}    ${COUNTRY_VALUE}
    List Selection Should Be    ${COUNTRY_LIST}    ${COUNTRY_VALUE}
    Input Text    ${INPUT_OTHER}    ${OTHER}
    Input Text    ${INPUT_PHONE}    ${PHONE}
    Input Text    ${INPUT_PHONE_MOBILE}    ${CELLPHONE}
    Input Text    ${INPUT_ALIAS}    ${ALIAS}
    Click Button    ${SUBMIT_ACCOUNT}

When I'm prompted to the page where I choose the address that will receive the product
    Wait Until Element Is Visible    ${PROCESS_ADDRESS}    ${TIMEOUT}
    Click Button    ${PROCESS_ADDRESS}

And I'm prompted to the page where I accept the terms and conditions
    Wait Until Page Contains Element    ${CHECKBOX_TERMS}    ${TIMEOUT}
    Select Checkbox    ${CHECKBOX_TERMS}

When I'm prompted to the page where I choose the shipping method
    Wait Until Element Is Visible    ${PROCESS_CARRIER}    ${TIMEOUT}
    Click Button    ${PROCESS_CARRIER}

And I'm prompted to the page where I choose the payment method and confirm the purchase
    Wait Until Element Is Visible    ${BANKWIRE}    ${TIMEOUT}
    Click Element    ${BANKWIRE}
    Click Button    ${SUBMIT_PAYMENT}

Then, if the purchase was completed succesfully, the next page should contain
    Page Should Contain    ${EXPECTED_TEXT}
