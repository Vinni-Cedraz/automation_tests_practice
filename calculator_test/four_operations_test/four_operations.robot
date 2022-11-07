*** Settings ***
Library                SeleniumLibrary
Resource            ../configs/config.resource
Resource            ../tasks/keywords.resource
Resource            ../page_objects/locators.robot

Test Setup          Open Browser
Test Teardown       Close Browser


*** Test Cases ***
Test Case 1: Addition
    [tags]    Addition
    Log To Console    Addition Test
    Given I have opened the herokuapp
    When I add 5 to 5
    Then I should get 10 as the answer
    Log To Console    Addition Test Completed

Test Case 2: Subtraction
    [tags]    Subtraction
    Log To Console    Subtraction Test
    Given I have opened the herokuapp
    When I subtract 5 from 5
    Then I should get 0 as the answer
    Log To Console    Subtraction Test Completed

Test Case 3: Multiplication
    [tags]    Multiplication
    Log To Console    Multiplication Test
    Given I have opened the herokuapp
    When I multiply 5 by 5
    Then I should get 25 as the answer
    Log To Console    Multiplication Test Completed

Test Case 4: Division
    [tags]    Division
    Log To Console    Division Test
    Given I have opened the herokuapp
    When I divide 5 by 5
    Then I should get 1 as the answer
    Log To Console    Division Test Completed

Test Case 5: All
    [tags]    All
    Log To Console    Testing all four operations at once
    Given I have opened the herokuapp
    When I add 5 to 5
    Then I should get 10 as the answer
    When I subtract 5 from 5
    Then I should get 0 as the answer
    When I multiply 5 by 5
    Then I should get 25 as the answer
    When I divide 5 by 5
    Then I should get 1 as the answer
    Log To Console    All four operations tested
