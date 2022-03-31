import time

from selenium.webdriver.common.by import By
from selenium.webdriver.remote.webelement import WebElement
from typing import List

item_price = "(//li[contains(@class, 'result__item cr-result__simple ')]//dd//span[@data-status='in'])[{}]"
buy_button_locator = item_price + "//ancestor::div[@class='catalog-result__item_tools result__tools']/form/button"


def find_two_the_most_expensive_items_and_buy_them(elements: List[WebElement]):
    elements_dict = {}
    i = 1
    for element in elements:
        price = float(element.find_element(By.XPATH, item_price.format(str(i))).text.replace(",", ".").replace(" ", ""))
        elements_dict.update({i: price})
        i = i + 1

    for n in range(2):
        max_val_index = __find_max_val_index(elements_dict=elements_dict)
        __click_to_by_item(element=elements[max_val_index].find_element(By.XPATH, buy_button_locator.
                                                                        format(max_val_index)))
        del elements_dict[max_val_index]


def __click_to_by_item(element: WebElement):
    element.click()
    time.sleep(2)


def __find_max_val_index(elements_dict: dict) -> int:
    return max(elements_dict, key=elements_dict.get)
