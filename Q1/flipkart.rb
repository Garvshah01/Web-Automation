require 'selenium-webdriver'
caps = Selenium::WebDriver::Remote::Capabilities.chrome('goog:chromeOptions' => {detach: true})
driver = Selenium::WebDriver.for :chrome, capabilities: caps

driver.navigate.to "https://www.flipkart.com/"
driver.manage.window.maximize
sleep(2)
#Login
driver.find_element(:xpath,"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input").send_keys("garvshah01@gmail.com")
driver.find_element(:xpath,"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input").send_keys("manjushah2")
sleep(1)
driver.find_element(:xpath,"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]").click
sleep(2)
#Search
driver.find_element(:xpath,"//*[@id='container']/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input").send_keys("PUMA x 1DER Rock V2 Sneakers For Men")
sleep(1)
driver.find_element(:xpath,"//*[@id='container']/div/div[1]/div[1]/div[2]/div[2]/form/div/button").click
sleep(2)
#Select
driver.find_element(:xpath,"//*[@id='container']/div/div[3]/div[1]/div[2]/div[2]/div/div[1]/div/a").click

#change the tab
original_window = driver.window_handle #store the original_window ID
driver.window_handles.each do |handle|
    if handle != original_window
        driver.switch_to.window handle
        print "window changed"
        break
    end
end

# driver.find_element(:xpath,"//*[@id='pincodeInputId']").send_keys("201014")
# Select Size
sleep(2)
driver.find_element(:xpath,"//*[@id='swatch-4-size']/a").click
sleep(1)
#BUY NOW
driver.find_element(:xpath,"//*[@id='container']/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button").click
sleep(1)
#Deliver Here
driver.find_element(:xpath,"//*[@id='ADD14058249249375706']/button").click
sleep(1)

#Apply SuperCoins
driver.find_element(:xpath,"//*[@id='container']/div/div[2]/div/div[1]/div[3]/div/div/div/div[1]/div/button").click
sleep(1)

#Continue
driver.find_element(:xpath,"//*[@id='to-payment']/button").click

sleep(5)
driver.find_element(:xpath,"//*[@id='container']/div/div[2]/div/div[1]/div[4]/div/div/div[3]/div/label[6]/div[1]").click




