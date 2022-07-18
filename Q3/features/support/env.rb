require 'selenium-webdriver'
require 'page-object'

BeforeAll do |scenario|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome('goog:chromeOptions' => {detach: true})
  $browser = Selenium::WebDriver.for :chrome, capabilities: caps
  $browser.manage.window.maximize
  $browser.manage.timeouts.implicit_wait = 10
end

AfterAll do |scenario|
  $browser.quit
end