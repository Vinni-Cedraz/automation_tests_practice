*** Variables ***
${SEARCH_BOX}               id=search_query_top
${SEARCH_BUTTON}            name=submit_search
${SHOWCASE}                 css=div[class="product-container"
${PRODUCT_NAME}             xpath=//a[@title='Printed Dress']
${ADD_TO_CART}              xpath=//a[@title='Add to cart' and @data-id-product='4']
${CHECKOUT}                 xpath=//a[@title='Proceed to checkout']
${CHECKOUT_HREF}            xpath=//a[@href='http://automationpractice.com/index.php?controller=order&step=1']
${EMAIL_CREATE}             xpath=//input[@id='email_create']
${EMAIL_CREATE_BUTTON}      id=SubmitCreate
${GENDER}                   id=id_gender1
${INPUT_FIRSTNAME}          id=customer_firstname
${INPUT_LASTNAME}           id=customer_lastname
${INPUT_PSWRD}              id=passwd
${DAYS}                     id=days
${DAYS_OPTION}              xpath=//select[@id='days']/option[@value='19']
${MONTHS}                   id=months
${MONTHS_OPTION}            xpath=//select[@id='months']/option[@value='10']
${YEARS}                    id=years
${YEARS_OPTION}             xpath=//select[@id='years']/option[@value='1990']
${INPUT_COMPANY}            id=company
${INPUT_ADDRESS}            id=address1
${INPUT_ADDRESS2}           id=address2
${INPUT_CITY}               id=city
${STATE_LIST}               id=id_state
${STATE_OPTION}             xpath=//select[@id='id_state']/option[@value='5']
${INPUT_POSTCODE}           id=postcode
${COUNTRY_LIST}             id=id_country
${COUNTRY_OPTION}           xpath=//select[@id='id_country']/option[@value='21']
${INPUT_OTHER}              id=other
${INPUT_PHONE}              id=phone
${INPUT_PHONE_MOBILE}       id=phone_mobile
${INPUT_ALIAS}              id=alias
${SUBMIT_ACCOUNT}           id=submitAccount
${PROCESS_ADDRESS}          xpath=//button[@name='processAddress']
${CHECKBOX_TERMS}           id=cgv
${PROCESS_CARRIER}          xpath=//button[@name='processCarrier']
${BANKWIRE}
...                         xpath=//a[@class='bankwire'][contains(.,'Pay by bank wire (order processing will be longer)')]
${SUBMIT_PAYMENT}           xpath=//button[@type='submit']
