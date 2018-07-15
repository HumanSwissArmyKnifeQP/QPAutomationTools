#!/bin/bash
seleniumStandalone="$(ls  ../selenium-server-standalone* | sort -V | tail -n1)"
# java -Dwebdriver.chrome.driver="../../WebDrivers/chromedriver" -Dwebdriver.gecko.driver="../../WebDrivers/geckodriver" -jar $seleniumStandalone -role hub -port 1337
java -jar $seleniumStandalone -role hub -port 1337