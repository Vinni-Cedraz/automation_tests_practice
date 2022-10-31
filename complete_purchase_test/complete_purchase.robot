*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Scenario: complete_purchase
    Open Browser    browser=firefox
    Go To    http://automationpractice.com/index.php
    Input Text    id=search_query_top    dress
    Click Button    name=submit_search
    Sleep    15
    Mouse Over    xpath=//a[@title='Printed Dress']
    Wait Until Element Is Visible    xpath=//a[@title='Add to cart' and @data-id-product='4']    timeout=15
    Click Element    xpath=//a[@title='Add to cart' and @data-id-product='4']
    Wait Until Element Is Visible    xpath=//a[@title='Proceed to checkout']    timeout=15
    Click Element    xpath=//a[@title='Proceed to checkout']
    Wait Until Element Is Visible
    ...    xpath=//a[@href='http://automationpractice.com/index.php?controller=order&step=1']
    ...    timeout=15
    Click Element    xpath=//a[@href='http://automationpractice.com/index.php?controller=order&step=1']
    Wait Until Element Is Visible    xpath=//input[@id='email_create']    timeout=15
    Input Text    id=email_create    emailtest_12_@email.com
    Click Button    id=SubmitCreate
    Wait Until Element Is Visible    id=id_gender1    timeout=25
    Click Element    id=id_gender1
    Input Text    id=customer_firstname    vitor
    Input Text    id=customer_lastname    cedraz
    Input Text    id=passwd    password
    Click Element    id=days
    Wait Until Element Is Visible    xpath=//select[@id='days']/option[@value='19']    timeout=15
    Click Element    xpath=//option[@value='19']
    List Selection Should Be    xpath=//select[@id='days']    19
    Click Element    id=months
    Wait Until Element Is Visible    xpath=//select[@id='months']/option[@value='10']    timeout=15
    Select From List By Value    xpath=//select[@id='months']    10
    List Selection Should Be    xpath=//select[@id='months']    10
    Click Element    id=years
    Wait Until Element Is Visible    xpath=//select[@id='years']/option[@value='1990']    timeout=15
    Select From List By Value    xpath=//select[@id='years']    1990
    List Selection Should Be    xpath=//select[@id='years']    1990
    Input Text    id=company    ACME
    Input Text    id=address1    1234 Main Street
    Input Text    id=address2    Apt 123
    Input Text    id=city    Anytown
    Click Element    id=id_state
    Wait Until Element Is Visible    xpath=//select[@id='id_state']/option[@value='1']    timeout=15
    Select From List By Value    xpath=//select[@id='id_state']    1
    List Selection Should Be    xpath=//select[@id='id_state']    1
    Input Text    id=postcode    12345
    Click Element    id=id_country
    Wait Until Element Is Visible    xpath=//select[@id='id_country']/option[@value='21']    timeout=15
    Select From List By Value    xpath=//select[@id='id_country']    21
    List Selection Should Be    xpath=//select[@id='id_country']    21
    Input Text    id=other    This is a test
    Input Text    id=phone    1234567890
    Input Text    id=phone_mobile    1234567890
    Input Text    id=alias    1234 Main Street
    Click Button    id=submitAccount
    Wait Until Element Is Visible    xpath=//button[@name='processAddress']    timeout=15
    Click Button    xpath=//button[@name='processAddress']
    Wait Until Page Contains Element    xpath=//input[@id='cgv']    timeout=15
    Select Checkbox    xpath=//input[@id='cgv']
    Wait Until Element Is Visible    xpath=//button[@name='processCarrier']    timeout=15
    Click Button    xpath=//button[@name='processCarrier']
    Wait Until Element Is Visible    xpath=//a[@class='bankwire']    timeout=15
    Click Element    xpath=//a[@class='bankwire']
    Click Button    xpath=//button[@type='submit']
		Page Should Contain    Please enter a search keyword
