*** Settings ***
Library     SeleniumLibrary

Test Setup     		Open Browser    ${URL}					${BROWSER}
Test Teardown     Close Browser

Resource    ../page_objects/locators.robot


*** Test Cases ***
Scenario: complete_purchase
    Input Text    																	${SEARCH_BOX}										dress
    Click Button    																${SEARCH_BUTTON}
		Wait Until Element Is Visible										${SHOWCASE}											timeout=15
    Mouse Over    																	${PRODUCT_NAME}
    Wait Until Element Is Visible     							${ADD_TO_CART}  								timeout=15
    Click Element   																${ADD_TO_CART}
    Wait Until Element Is Visible    								${CHECKOUT}									    timeout=15
    Click Element																		${CHECKOUT}
    Wait Until Element Is Visible                   ${CHECKOUT_HREF}								timeout=15
    Click Element																		${CHECKOUT_HREF}
    Wait Until Element Is Visible       						${EMAIL_CREATE}									timeout=15
    Input Text    																	${EMAIL_CREATE}    							emailtest_9_@gmail.com
    Click Button  																	${EMAIL_CREATE_BUTTON} 
    Wait Until Element Is Visible    								${GENDER}												timeout=25
    Click Element   																${GENDER}
    Input Text    																	${INPUT_FIRSTNAME}							Vitor
    Input Text    																	${INPUT_LASTNAME}								Gonçalves	
    Input Text    																	${INPUT_PSWRD}									password
    Click Element    																${DAYS}
    Wait Until Element Is Visible   								${DAYS_OPTION}
   	Select From List By Value												${DAYS}												19
    List Selection Should Be    										${DAYS}												19
		Click Element                                   ${MONTHS}
		Wait Until Element Is Visible                   ${MONTHS_OPTION}
		SeleniumLibrary.Select From List By Value       ${MONTHS}											10
    List Selection Should Be   											${MONTHS}    									10
    Click Element    																${YEARS}
    Wait Until Element Is Visible    								${YEARS_OPTION}
    Select From List By Value    										${YEARS}											1990
    List Selection Should Be    										${YEARS}    									1990
    Input Text    																	${INPUT_COMPANY}   						ACME
    Input Text    																	${INPUT_ADDRESS}							address 10, Apt 124
    Input Text    																	${INPUT_ADDRESS2}							address 11, Apt 123	
    Input Text    																	${INPUT_CITY}									Anytown
    Click Element   																${STATE_LIST} 
    Wait Until Element Is Visible    								${STATE_OPTION}   						timeout=15
    Select From List By Value    										${STATE_LIST}									5
    List Selection Should Be    										${STATE_LIST}    							5
    Input Text    																	${POSTCODE}    								12345
    Click Element    																${COUNTRY_LIST}
    Wait Until Element Is Visible    								${COUNTRY_OPTION}
    Select From List By Value    										${COUNTRY_LIST} 							21
    List Selection Should Be   											${COUNTRY_LIST}               21
    Input Text    																	${OTHER}    									This is a test
    Input Text    																	${PHONE}    									1234567890
    Input Text    																	${PHONE_MOBILE}    						1234567890
    Input Text    																	${ALIAS}    									1234 Main Street
    Click Button    																${SUBMIT_ACCOUNT}
    Wait Until Element Is Visible     							${PROCESS_ADDRESS}  					timeout=15
    Click Button    																${PROCESS_ADDRESS}
    Wait Until Page Contains Element    						${CHECKBOX_TERMS}							timeout=15
    Select Checkbox    															${CHECKBOX_TERMS}
    Wait Until Element Is Visible    								${PROCESS_CARRIER}						timeout=25
    Click Button    																${PROCESS_CARRIER}
    Wait Until Element Is Visible    								${BANKWIRE}    								timeout=15
    Click Element    																${BANKWIRE}
    Click Button    																${SUBMIT_PAYMENT}
    Page Should Contain    													Please enter a search keyword
