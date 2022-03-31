*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Start Testcase
    Open browser  https://www.21vek.by/  chrome
    Maximize Browser Window

Finish Testcase
    Close browser