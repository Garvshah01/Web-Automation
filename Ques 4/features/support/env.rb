require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'site_prism'
require 'site_prism/all_there'

# Capybara.current_driver = :selenium_chrome

Capybara.register_driver :site_prism do |app|
  browser = ENV.fetch('browser', 'chrome').to_sym
  Capybara::Selenium::Driver.new(app, browser: browser)
end

# Then tell Capybara to use the Driver you've just defined as its default driver
Capybara.configure do |config|
  config.default_driver = :site_prism
end