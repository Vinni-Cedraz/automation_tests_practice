

*** Settings ***

Library             SeleniumLibrary
Resource            ../page_objects/locators.robot
Resource            ../configs/config.resource
Resource            ../resources/keywords.resource
Documentation    		Tags in Robot Framework

Test Setup          Open Browser    ${URL}    ${BROWSER}
Test Teardown       Close Browser


*** Test Cases ***

Test Case 01: Product Search
		[tags]    Search 
		Log To Console    		tag: search
    Given that I search for the product
    When I click on the search button
    Then I should see the product showcase

Test Case 02: Product Showcase
		[Tags]    Showcase
		Log To Console   			tag: Showcase
    Given that the product is available
    When I hover over the product
    Then the add to cart button should be visible

Test Case 03: Add to Cart
		[Tags]   	Cart
		Log To Console   			tag: Cart
    Given that the add to cart button is available
    When I click on the add to cart button
    Then the proceed to checkout button should become visible

Test Case 04: Price Check
		[Tags]   	Price
		Log To Console   			tag: Price
    Given that the product is added to the cart
    When I click on the proceed to checkout button
    Then next page contains the product's price and another proceed to checkout button

Test Case 05: Proceed to Checkout
		[Tags]   	Checkout
		Log To Console    		tag: Checkout
    Given that I confirmed the price
    When I click on the second proceed to checkout button
    Then the next page should require my subscription

Scenaario 06: Account Creation
		[Tags]   	Account
		Log To Console    		tag: Account
    Given that I am on the subscription page
    When I input the data to create my account and click on submit
    Then the next page confirm the address where the product will be shipped to

Test Case 07: Address Confirmation
		[Tags]   	Address
		Log To Console   			tag: Address
    Given that I created my account succesfully
    When I decide the shipping address
    Then the next page should ask to accept terms of service

Test Case 08: Terms of Service
		[Tags]   	Terms
		Log To Console   			tag: Terms
    Given that I decided the shipping address
    When I accept terms of service
    Then in the next page I should be able to choose the shipping method

Test Case 09: Shipping Method, Payment and Confirmation
		[Tags]   	Payment
		Log To Console   			tag: Payment
    Given that I chose the shipping method
    When I'm prompted to the page where I choose the payment method and confirm the purchase
    Then, if the purchase was completed succesfully, the next page should contain
