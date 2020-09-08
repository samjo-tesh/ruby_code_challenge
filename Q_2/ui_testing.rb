require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = "/home/samuel/Desktop/web_drivers/chromedriver"

searchterm = 'software automated testing'

caps = Selenium::WebDriver::Remote::Capabilities.new 
caps["name"] = "UI Testing with Selenium"

driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps

wait = Selenium::WebDriver::Wait.new(timeout: 10)

puts "Loading URL"
driver.get 'https://google.com'

puts "Putting Search Term on search box"
driver.find_element(name: 'q').send_keys searchterm, :return

puts "Selecting the first result"
first_result = wait.until { driver.find_element(css: 'div.cfxYMc.JfZTW.c4Djg.MUxGbd.v0nnCb') }
first_result.click()

puts "Waiting for 5 sec"
sleep(5)

puts "Quitting"
driver.quit

