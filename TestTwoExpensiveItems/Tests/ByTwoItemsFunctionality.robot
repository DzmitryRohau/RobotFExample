*** Settings ***
Documentation  Basic Search Functionality
Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/MainPage.robot


Test Setup  CommonFunctionality.Start Testcase
Test Teardown  CommonFunctionality.Finish Testcase

*** Variables ***

*** Test Cases ***
Add to cart two the mist expensive items
    MainPage.Input Search Text And Click First Category
    MainPage.Add To Cart Two The Most Expensive Items
