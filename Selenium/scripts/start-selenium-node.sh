#!/bin/bash
seleniumStandalone="$(ls  ../selenium-server-standalone* | sort -V | tail -n1)"
hubHost="http://localhost:1337/grid/register"
echo "Connecting node to Selenium Hub located at $hubHost"
echo $hubHost
java -Dwebdriver.chrome.driver="../../WebDrivers/chromedriver" -Dwebdriver.gecko.driver="../../WebDrivers/geckodriver" -jar $seleniumStandalone -role node -port 1338 -hub $hubHost 