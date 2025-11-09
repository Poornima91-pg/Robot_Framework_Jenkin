
*** Settings ***
# General documentation for this file
Documentation    This file contains detailed keyword definitions specifically designed for testing the various features of the login page on the SauceDemo website.

# Libraries used in this file
Library          SeleniumLibrary
Library          Collections
Library          String

# Variables files for locators and test data
Variables        D:\Poornima\Ofc\Automation_class\Code\RobotFrameWork\Resources\PageObject\TestData\test_data.py
Variables        D:\Poornima\Ofc\Automation_class\Code\RobotFrameWork\Resources\PageObject\Locators\test_locators.py

# Resource files for additional keyword definitions
Resource         D:\Poornima\Ofc\Automation_class\Code\RobotFrameWork\Resources\PageObject\KeywordDefinitionFiles\cartpage.robot
Resource         D:\Poornima\Ofc\Automation_class\Code\RobotFrameWork\Resources\PageObject\KeywordDefinitionFiles\checkoutpage.robot
Resource         D:\Poornima\Ofc\Automation_class\Code\RobotFrameWork\Resources\PageObject\KeywordDefinitionFiles\generic.robot
Resource         D:\Poornima\Ofc\Automation_class\Code\RobotFrameWork\Resources\PageObject\KeywordDefinitionFiles\inventorypage.robot
Resource         D:\Poornima\Ofc\Automation_class\Code\RobotFrameWork\Resources\PageObject\KeywordDefinitionFiles\loginpage.robot

*** Test Cases ***
# Test case to validate login and logout functionality
Validate Login And Logout Functionality
    [Tags]    SMOKE    REGRESSION
    # Login to the webpage
    Login Into The Webpage
    # Check login successfull
    Check Footer Widget Links
    Check The Products Order A-Z
    Should Be Equal    ${logo_text}    SWAG LABS
    # Add items to the cart
    Add Items To Cart    ${cart_list}
    # Go to the cart page
    Go To Cart
    # Go to the checkout details page
    Go To Checkout Details
    # Add checkout details
    Add Checkout Details
    # Go to the checkout overview page
    Go To Checkout Overview
    # Complete the order
    Complete Order
    # Verify the checkout message
    Verify Checkout Message
    # Logout from the webpage
    Logout of the Webpage
    # Verify that the logout was successful by checking the login page URL
    Verify Logout Successful
