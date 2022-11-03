*** Settings ***
Documentation       Tags in Robot Framework

Library             String
Library             SeleniumLibrary
Resource            ../page_objects/locators.robot
Resource            ../configs/config.resource
Resource            ../resources/keywords.resource

Test Setup          Open Browser    ${URL}    ${BROWSER}
Test Teardown       Close Browser


*** Test Cases ***
Test Case 01: Product Search
    [Tags]    search    all
    Log To Console    tags: Search, All
    Given that I search for the product
    When I click on the search button
    Then I should see the product showcase

Test Case 02: Product Showcase
    [Tags]    showcase    all
    Log To Console    tags: Showcase, All
    Given that the product is available
    When I hover over the product
    Then the add to cart button should be visible

Test Case 03: Add to Cart
    [Tags]    cart    all
    Log To Console    tags: Cart, All
    Given that the add to cart button is available
    When I click on the add to cart button
    Then the proceed to checkout button should become visible

Test Case 04: Price Check
    [Tags]    price    all
    Log To Console    tags: Price, All
    Given that the product is added to the cart
    When I click on the proceed to checkout button
    Then next page contains the product's price and another proceed to checkout button

Test Case 05: Proceed to Checkout
    [Tags]    checkout    all
    Log To Console    tags: Checkout, All
    Given that I confirmed the price
    When I click on the second proceed to checkout button
    Then the next page should require my subscription

Scenaario 06: Account Creation
    [Tags]    account    all
    Log To Console    tags: Account, All
    Given that I am on the subscription page
    When I input the data to create my account and click on submit
    Then the next page confirm the address where the product will be shipped to

Test Case 07: Address Confirmation
    [Tags]    address    all
    Log To Console    tags: Address, All
    Given that I created my account succesfully
    When I decide the shipping address
    Then the next page should ask to accept terms of service

Test Case 08: Terms of Service
    [Tags]    terms    all
    Log To Console    tags: Terms, All
    Given that I decided the shipping address
    When I accept terms of service
    Then in the next page I should be able to choose the shipping method

Test Case 09: Shipping Method, Payment and Confirmation
    [Tags]    payment    all
    Log To Console    tags: Payment, All
    Given that I chose the shipping method
    When I'm prompted to the page where I choose the payment method and confirm the purchase
    Then, if the purchase was completed succesfully, the next page should contain
