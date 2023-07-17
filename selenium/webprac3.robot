*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Open Web
    Open Browser        https://www.foodnetwork.com/recipes    chrome
    Log To Console      Open FoodNetwork Website
    Maximize Browser Window
    Sleep               3s

Click Food
    Click Element        //a[@class='o-InternationalDialog__a-Button']
    Sleep               3s

Search Food
    Input Text                //input[@class='typeahead typehead-nocircle tt-input']    Egg Fried Rice
    Click Button              //button[@class='button m-search__submit m-searchsubmit-search-home']
    Sleep                     3s
    Execute Javascript        window.scrollTo(0,1000)
    Sleep                     2s
    Click Element             //h4[@class='cmp-title__text' and contains(text(),'Ayam Pongteh')]

*** Test Cases ***
FoodNetwork Webtest
    Open Web
    Click Food
    Search Food
