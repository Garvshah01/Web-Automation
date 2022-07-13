require 'selenium-webdriver'
caps = Selenium::WebDriver::Remote::Capabilities.chrome('goog:chromeOptions' => {detach: true})
driver = Selenium::WebDriver.for :chrome, capabilities: caps


Given('I am on login page') do
    driver.navigate.to "https://www.flipkart.com/"
    driver.manage.window.maximize
end
sleep(2)
#Login
When('I enter the email') do
    driver.find_element(:xpath,"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input").send_keys("garvshah01@gmail.com")
end

When('I enter Password') do
    driver.find_element(:xpath,"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input").send_keys("manjushah2")
end
sleep(1)

When('I press Login') do
    sleep(1)
    driver.find_element(:xpath,"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]").click
end

Then ('I see my email') do
    expect(driver.find_element(:xpath,"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input").attribute('value')).to eq("garvshah01@gmail.com")
end
Then ('I see my password') do
    expect(driver.find_element(:xpath,"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input").attribute('value')).to eq("manjushah2")
end

Then ('Name changes to UserName') do
    sleep(3)
    expect(driver.find_element(:xpath,"//*[@id='container']/div/div[1]/div[1]/div[2]/div[3]/div/div").text).to eq("Garv")
end


# "-------------------------------------------------------------------------------------------------"

Given('I am at HomePage') do
    expect(driver.current_url).to eq("https://www.flipkart.com/")
end

When('I typed in search box') do
    driver.find_element(:xpath,"//*[@id='container']/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input").send_keys("PUMA x 1DER Rock V2 Sneakers For Men")
end
sleep(2)
When('I press search button') do
    driver.find_element(:xpath,"//*[@id='container']/div/div[1]/div[1]/div[2]/div[2]/form/div/button").click
end

Then('I get types value in search box') do
    expect(driver.find_element(:xpath,"//*[@id='container']/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input").attribute('value')).to eq("PUMA x 1DER Rock V2 Sneakers For Men")
end

Then('I get the result') do
    expect(driver.current_url).not_to eq("https://www.flipkart.com/")
end

# "---------------------------------------------------------------------------------------------------"