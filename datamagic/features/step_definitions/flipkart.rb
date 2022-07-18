require 'selenium-webdriver'
require 'page-object'
require 'data_magic'
caps = Selenium::WebDriver::Remote::Capabilities.chrome('goog:chromeOptions' => {detach: true})
driver = Selenium::WebDriver.for :chrome, capabilities: caps

class Flipkart
  include PageObject
  include DataMagic
  DataMagic.yml_directory = "C:/Users/garvs/OneDrive/Desktop/Cucumber/datamagic/features/data"
  DataMagic.load "data.yml"

  page_url("https://www.flipkart.com/")
  text_field(:email,:xpath =>"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input")
  text_field(:password,:xpath =>"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input")
  button(:click,:xpath =>"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button")

  def checkout
    populate_page_with data_for(:login)
    self.click
  end
end

f = Flipkart.new(driver)
f.goto
f.checkout

