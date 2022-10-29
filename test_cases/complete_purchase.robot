# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    complete_purchase.robot                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vcedraz- <vcedraz-@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/29 15:03:12 by vcedraz-          #+#    #+#              #
#    Updated: 2022/10/29 20:11:55 by vcedraz-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Scenario: complete_purchase
	Open Browser    														browser=firefox
	Go To    																		http://automationpractice.com/index.php
	Input Text    															id=search_query_top    dress
	Click Button    														name=submit_search
	Mouse Over    															xpath=//a[@title='Printed Dress']
	Wait Until Element Is Visible               xpath=//a[@title='Add to cart' and @data-id-product='4']
	Click Element    														xpath=//a[@title='Add to cart' and @data-id-product='4']
	Wait Until Element Is Visible               xpath=//a[@title='Proceed to checkout']
	Click Element    														xpath=//a[@title='Proceed to checkout']
	Wait Until Element Is Visible               xpath=//a[@href='http://automationpractice.com/index.php?controller=order&step=1']
	Click Element                               xpath=//a[@href='http://automationpractice.com/index.php?controller=order&step=1']
	Wait Until Element Is Visible               xpath=//input[@id='email_create']
	Input Text                                  id=email_create	       emailtest987@email.com
	Click Button                                id=SubmitCreate
	Wait Until Element Is Visible               id=id_gender1
	Click Element                               id=id_gender1
	Input Text                                  id=customer_firstname    vitor
	Input Text                                  id=customer_lastname     cedraz
	Input Text                                  id=passwd                password
	Click Element                               id=days
	Click Element                               xpath=//option[@value='19']
	Click Element                               id=months
	Click Element                              xpath=//option[@value='7']
	Click Element                              id=years
	Click Element                              xpath=//option[@value='1998']
	Click Button 														 	 id=newsletter


