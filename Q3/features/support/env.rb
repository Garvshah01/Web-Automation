require 'selenium-webdriver'
require 'page-object'

Before do |scenario|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome('goog:chromeOptions' => {detach: true})
  @browser = Selenium::WebDriver.for :chrome, capabilities: caps
  @browser.manage.window.maximize
  @browser.manage.timeouts.implicit_wait = 10
end

After do |scenario|
  @browser.quit
end