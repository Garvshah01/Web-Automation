require_relative "../flipkart_pages/flipkart.rb"

Given('I am on login page') do 
  $flipkart = Flipkart.new($browser)
  $flipkart.navigate
  sleep(3)
end

        
When('I enter the email') do
  $flipkart.enter_email
end

When('I enter Password') do
  $flipkart.enter_password
end

When('I press Login') do
  $flipkart.click_login
end

Then('I see my email') do
  expect($flipkart.check_email).to eq("garvshah01@gmail.com")
end

Then('I see my password') do
  expect($flipkart.check_password).to eq("manjushah2")
end

Then('Name changes to UserName') do
  sleep(2)
  expect($flipkart.check_login).to eq("Garv")
end

Given('I am at HomePage') do
  # @flipkart = Flipkart.new(@browser)
  # @flipkart.navigate
  # @flipkart.login
end

When('I typed in search box') do
  $flipkart.search_item
end

When('I press search button') do
  $flipkart.clicksearch
end

Then('I get types value in search box') do
  expect($flipkart.check_search).to eq("PUMA x 1DER Rock V2 Sneakers For Men")
end

Then('I get the result') do
  expect($flipkart.check_url).not_to eq("https://www.flipkart.com/")
end



