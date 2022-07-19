require 'selenium-webdriver'
require 'page-object'
require 'data_magic'

Before do |scenario|
  DataMagic.load_for_scenario(scenario)
  caps = Selenium::WebDriver::Remote::Capabilities.chrome('goog:chromeOptions' => {detach: true})
  @browser = Selenium::WebDriver.for :chrome, capabilities: caps
  @browser.manage.window.maximize
  @browser.manage.timeouts.implicit_wait = 10
  # @driver.system.window.maximize
end