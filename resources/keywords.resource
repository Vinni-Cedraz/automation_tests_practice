*** Keywords ***
Given that I search for the product
    Input Text    ${SEARCH_BOX}    ${PRODUCT}
When I click on the search button
    Click Button    ${SEARCH_BUTTON}
Then I should see the product showcase
    Wait Until Element Is Visible    ${SHOWCASE}    ${TIMEOUT}
		Scroll Element Into View    ${SHOWCASE}
		Sleep 	1s


Given that the product is available
    Input Text    ${SEARCH_BOX}    ${PRODUCT}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${SHOWCASE}    ${TIMEOUT}
		Scroll Element Into View    ${SHOWCASE}
When I hover over the product
    Mouse Over    ${PRODUCT_NAME}
Then the add to cart button should be visible
    Wait Until Element Is Visible    ${ADD_TO_CART}    ${TIMEOUT}

Given that the add to cart button is available
		Input Text    	${SEARCH_BOX}    ${PRODUCT}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${SHOWCASE}    ${TIMEOUT}
		Scroll Element Into View    ${SHOWCASE}
    Mouse Over    ${PRODUCT_NAME}
    Wait Until Element Is Visible    ${ADD_TO_CART}    ${TIMEOUT}
When I click on the add to cart button
    Click Element    ${ADD_TO_CART}
Then the proceed to checkout button should become visible
    Wait Until Element Is Visible    ${CHECKOUT}    ${TIMEOUT}

Given that the product is added to the cart
		Input Text    	${SEARCH_BOX}    ${PRODUCT}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${SHOWCASE}    ${TIMEOUT}
		Scroll Element Into View    ${SHOWCASE}
    Mouse Over    ${PRODUCT_NAME}
    Wait Until Element Is Visible    ${ADD_TO_CART}    ${TIMEOUT}
    Click Element    ${ADD_TO_CART}
    Wait Until Element Is Visible    ${CHECKOUT}    ${TIMEOUT}
When I click on the proceed to checkout button
    Click Element    ${CHECKOUT}
Then next page contains the product's price and another proceed to checkout button
		Page Should Contain    	 	${PRICE}
    Wait Until Element Is Visible    ${CHECKOUT_HREF}    ${TIMEOUT}

Given that I confirmed the price
		Input Text    	${SEARCH_BOX}    ${PRODUCT}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${SHOWCASE}    ${TIMEOUT}
		Scroll Element Into View    ${SHOWCASE}
    Mouse Over    ${PRODUCT_NAME}
    Wait Until Element Is Visible    ${ADD_TO_CART}    ${TIMEOUT}
    Click Element    ${ADD_TO_CART}
    Wait Until Element Is Visible    ${CHECKOUT}    ${TIMEOUT}
    Click Element    ${CHECKOUT}
		Page Should Contain								${PRICE}
    Wait Until Element Is Visible    ${CHECKOUT_HREF}    ${TIMEOUT}
When I click on the second proceed to checkout button
    Click Element    ${CHECKOUT_HREF}
Then the next page should require my subscription
    Wait Until Element Is Visible    ${EMAIL_CREATE}    ${TIMEOUT}

Given that I am on the subscription page
		Input Text    	${SEARCH_BOX}    ${PRODUCT}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${SHOWCASE}    ${TIMEOUT}
		Scroll Element Into View    ${SHOWCASE}
    Mouse Over    ${PRODUCT_NAME}
    Wait Until Element Is Visible    ${ADD_TO_CART}    ${TIMEOUT}
    Click Element    ${ADD_TO_CART}
    Wait Until Element Is Visible    ${CHECKOUT}    ${TIMEOUT}
    Click Element    ${CHECKOUT}
		Page Should Contain 							${PRICE}
    Wait Until Element Is Visible    ${CHECKOUT_HREF}    ${TIMEOUT}
    Click Element    ${CHECKOUT_HREF}
    Wait Until Element Is Visible    ${EMAIL_CREATE}    ${TIMEOUT}
When I input the data to create my account and click on submit 
    Input Text    ${EMAIL_CREATE}    ${EMAIL1}
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
Then the next page confirm the address where the product will be shipped to
    Wait Until Element Is Visible    ${PROCESS_ADDRESS}    ${TIMEOUT}

Given that I created my account succesfully
		Input Text    	${SEARCH_BOX}    ${PRODUCT}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${SHOWCASE}    ${TIMEOUT}
		Scroll Element Into View    ${SHOWCASE}
    Mouse Over    ${PRODUCT_NAME}
    Wait Until Element Is Visible    ${ADD_TO_CART}    ${TIMEOUT}
    Click Element    ${ADD_TO_CART}
    Wait Until Element Is Visible    ${CHECKOUT}    ${TIMEOUT}
    Click Element    ${CHECKOUT}
		Page Should Contain								${PRICE}
    Wait Until Element Is Visible    ${CHECKOUT_HREF}    ${TIMEOUT}
    Click Element    ${CHECKOUT_HREF}
    Wait Until Element Is Visible    ${EMAIL_CREATE}    ${TIMEOUT}
    Input Text    ${EMAIL_CREATE}    ${EMAIL2}
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
    Wait Until Element Is Visible    ${PROCESS_ADDRESS}    ${TIMEOUT}
When I decide the shipping address
    Click Button    ${PROCESS_ADDRESS}
Then the next page should ask to accept terms of service
    Wait Until Page Contains Element    ${CHECKBOX_TERMS}    ${TIMEOUT}

Given that I decided the shipping address
		Input Text    	${SEARCH_BOX}    ${PRODUCT}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${SHOWCASE}    ${TIMEOUT}
		Scroll Element Into View    ${SHOWCASE}
    Mouse Over    ${PRODUCT_NAME}
    Wait Until Element Is Visible    ${ADD_TO_CART}    ${TIMEOUT}
    Click Element    ${ADD_TO_CART}
    Wait Until Element Is Visible    ${CHECKOUT}    ${TIMEOUT}
    Click Element    ${CHECKOUT}
		Page Should Contain								${PRICE}
    Wait Until Element Is Visible    ${CHECKOUT_HREF}    ${TIMEOUT}
    Click Element    ${CHECKOUT_HREF}
    Wait Until Element Is Visible    ${EMAIL_CREATE}    ${TIMEOUT}
    Input Text    ${EMAIL_CREATE}    ${EMAIL3}
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
    Wait Until Element Is Visible    ${PROCESS_ADDRESS}    ${TIMEOUT}
    Click Button    ${PROCESS_ADDRESS}
    Wait Until Page Contains Element    ${CHECKBOX_TERMS}    ${TIMEOUT}
When I accept terms of service
    Select Checkbox    ${CHECKBOX_TERMS}
Then in the next page I should be able to choose the shipping method
    Wait Until Element Is Visible    ${PROCESS_CARRIER}    ${TIMEOUT}

Given that I chose the shipping method
		Input Text    	${SEARCH_BOX}    ${PRODUCT}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${SHOWCASE}    ${TIMEOUT}
		Scroll Element Into View    		 ${SHOWCASE}
    Mouse Over    ${PRODUCT_NAME}
    Wait Until Element Is Visible    ${ADD_TO_CART}    ${TIMEOUT}
    Click Element    ${ADD_TO_CART}
    Wait Until Element Is Visible    ${CHECKOUT}    ${TIMEOUT}
    Click Element    ${CHECKOUT}
		Page Should Contain							 ${PRICE}
    Wait Until Element Is Visible    ${CHECKOUT_HREF}    ${TIMEOUT}
    Click Element    ${CHECKOUT_HREF}
    Wait Until Element Is Visible    ${EMAIL_CREATE}    ${TIMEOUT}
    Input Text    ${EMAIL_CREATE}    ${EMAIL4}
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
    Wait Until Element Is Visible    ${PROCESS_ADDRESS}    ${TIMEOUT}
    Click Button    ${PROCESS_ADDRESS}
    Wait Until Page Contains Element    ${CHECKBOX_TERMS}    ${TIMEOUT}
    Select Checkbox    ${CHECKBOX_TERMS}
    Wait Until Element Is Visible    ${PROCESS_CARRIER}    ${TIMEOUT}
    Click Button    ${PROCESS_CARRIER}
When I'm prompted to the page where I choose the payment method and confirm the purchase
    Wait Until Element Is Visible    ${BANKWIRE}    ${TIMEOUT}
    Click Element    ${BANKWIRE}
    Click Button    ${SUBMIT_PAYMENT}
Then, if the purchase was completed succesfully, the next page should contain
    Page Should Contain    ${EXPECTED_TEXT}
