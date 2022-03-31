*** Settings ***
Library  SeleniumLibrary
Library  ../PageObjects/SearchList/search_list.py

*** Variables ***
${search_text}  ssd
${items_locator}  //li[contains(@class, 'result__item cr-result__simple ')]

*** Keywords ***
Input Search Text And Click First Category
    Input text  //input[@id="catalogSearch"]  ${search_text}
    Press Keys  //input[@id="catalogSearch"]/parent::div/button  [Return]


Add To Cart Two The Most Expensive Items
    Wait Until Page Contains Element  ${items_locator}
    ${elements}=  Get WebElements  ${items_locator}
    Find Two The Most Expensive Items And Buy Them  ${elements}
