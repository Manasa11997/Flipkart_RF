*** Settings ***
Library  SeleniumLibrary


*** Keywords ***

Open Flipkart with a valid mobile number
    Open Browser  ${url_flipkart}  ${browser}
    Maximize Browser Window
    sleep  1s
    Press Keys  ${mobile_number}   9035931997
    Press Keys  ${Password}  Manu@1997
    sleep  3s
    Click Element  ${Login}
    Execute Javascript  window.scrollTo(0, 500)
    sleep  1s
    Log to Console  Login Successful!!!

Navigate to Electronics category
    Mouse Over  ${Electronics}
    sleep  4s
    Log to Console  Selected the Electronics category

Select the electronic device
    Click Element  ${Hard_disk}
    sleep  4s
    Click Element  ${Device}
    sleep  4s
    Log to Console  Selected the Device successfully!!!

Add the device to cart
     select window  title=Seagate Ultra Touch 2 TB External Hard Disk Drive - Seagate : Flipkart.com
     Click Element  ${Add_to_cart}
     sleep  3s
     Log to Console  Added the item to the cart

Go to cart and verify if the item is added in the cart
     select window  title=External Hard Disks - Buy External Hard Disks and SSDs Online at Best Prices | Flipkart.com
     sleep  4s
     Click Element  ${Verify_cart}
     sleep  4s
     Log to Console  Successfully verified the item in the cart
