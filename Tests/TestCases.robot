*** Settings ***
Library  SeleniumLibrary
Resource  ../Operations/Automate.robot
Resource  ../Operations/Variables.robot
Library  SeleniumLibrary
Resource  ../Operations/Automate.robot
Resource  ../Operations/Variables.robot
Library  SeleniumLibrary

*** Test Cases ***
User should be able to add the electronic device to the cart
    [Tags]    sanity
    Open Flipkart with a valid mobile number
    Navigate to Electronics category
    Select the electronic device
    Add the device to cart
    Go to cart and verify if the item is added in the cart