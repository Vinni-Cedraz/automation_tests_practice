*** Settings ***
Library             SeleniumLibrary
Resource            ../page_objects/locators.robot
Resource            ../configs/config.resource
Resource            ../resources/keywords.resource

Test Setup          Open Browser    ${URL}    ${BROWSER}
Test Teardown       Close Browser


*** Test Cases ***
Scenario-01: Product Search
    Given that I search for the product
    When I click on the search button
    Then I should see the product showcase

Scenario-02: Product Showcase
    Given that the product is available
    When I hover over the product
    Then the add to cart button should be visible

Scenario-03: Add to Cart
    Given that the add to cart button is available
    When I click on the add to cart button
    Then the proceed to checkout button should become visible

Scenario-04: Price Check
    Given that the product is added to the cart
    When I click on the proceed to checkout button
    Then next page contains the product's price and another proceed to checkout button

Scenario-05: Proceed to Checkout
    Given that I confirmed the price
    When I click on the second proceed to checkout button
    Then the next page should require my subscription

Scenaario-06: Account Creation
    Given that I am on the subscription page
    When I input the data to create my account and click on submit
    Then the next page confirm the address where the product will be shipped to

Scenario-07: Address Confirmation
    Given that I created my account succesfully
    When I decide the shipping address
    Then the next page should ask to accept terms of service

Scenario-08: Terms of Service
    Given that I decided the shipping address
    When I accept terms of service
    Then in the next page I should be able to choose the shipping method

Scenario-09: Shipping Method, Payment and Confirmation
    Given that I chose the shipping method
    When I'm prompted to the page where I choose the payment method and confirm the purchase
    Then, if the purchase was completed succesfully, the next page should contain
