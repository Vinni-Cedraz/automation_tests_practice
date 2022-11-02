*** Settings ***
Library     SeleniumLibrary

Test Setup     		Open Browser    ${URL}					${BROWSER}
Test Teardown     Close Browser

Resource    ../page_objects/locators.robot
Resource    ../configs/config.resource
Resource    ../resources/keywords.resource


*** Test Cases ***
Scenario: complete_purchase
	Given that I want to search for the product
	When I add the product to the cart and proceed to checkout
	And create my account on the website
	When I'm prompted to the page where I choose the address that will receive the product 
	And I'm prompted to the page where I accept the terms and conditions
	When I'm prompted to the page where I choose the shipping method
	And I'm prompted to the page where I choose the payment method and confirm the purchase
	Then, if the purchase was completed succesfully, the next page should contain
