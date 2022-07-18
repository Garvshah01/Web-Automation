require 'rspec'
include RSpec::Matchers

require_relative "../pa/flipkartsp.rb"

Given('We are at flipkart website') do
  @flipkart = Flipkart.new
end

When('We enter email address') do
  @flipkart.wait_until_email_visible(wait: 10)
  @flipkart.enter_email
end

When('We enter the password') do
  @flipkart.enter_password
end

When('Click Login button') do
  @flipkart.click_login
end

Then('I see my email') do
  expect(@flipkart.check_email).to eq("garvshah01@gmail.com")
end

Then('I see my password') do
  expect(@flipkart.check_password).to eq("manjushah2")
end

Then('Name changes to UserName') do
  sleep 2
  expect(@flipkart.check_login).to eq("Garv")
  sleep 5
end

Given('I am at HomePage') do
  @flipkart = SearchItem.new
  @flipkart.login
end

When('I typed in search box') do
  sleep 2
  @flipkart.enter_item("PUMA x 1DER Rock V2 Sneakers For Men")
end

When('I press search button') do
  @flipkart.click_search_button
end

Then('I get types value in search box') do
  expect(@flipkart.enter_text).to eq("PUMA x 1DER Rock V2 Sneakers For Men")
end
Then('I get the result') do
  expect(@flipkart.current_url).not_to eq("https://www.flipkart.com/")
  sleep 5
end
