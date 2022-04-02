*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${sort_by_price_asc_button_locator}  //a[@href='https://www.21vek.by/search/?term=ssd&sa=&order[price]=asc']
${sort_by_price_desc_button_locator}  //a[@href='https://www.21vek.by/search/?term=ssd&sa=&order[price]=desc']

*** Keywords ***

Sort By Price
    Wait Until Page Contains Element  ${sort_by_price_asc_button_locator}
    Press Keys  ${sort_by_price_asc_button_locator}  [Return]
    Wait Until Page Contains Element  ${sort_by_price_desc_button_locator}
    Press Keys  ${sort_by_price_desc_button_locator}  [Return]
    Sleep  5s
