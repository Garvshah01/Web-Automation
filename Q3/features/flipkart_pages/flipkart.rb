# require 'selenium-webdriver'
# require 'page-object'
# caps = Selenium::WebDriver::Remote::Capabilities.chrome('goog:chromeOptions' => {detach: true})
# browser = Selenium::WebDriver.for :chrome, capabilities: caps
# browser.manage.window.maximize



class Flipkart
  include PageObject

  page_url("https://www.flipkart.com/")
  text_field(:username,:xpath =>"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input")
  text_field(:password,:xpath =>"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input")
  div(:garv,:xpath => "//*[@id='container']/div/div[1]/div[1]/div[2]/div[3]/div/div")
  button(:click,:xpath =>"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button")

  text_field(:search,:xpath=>"//*[@id='container']/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input")
  button(:clicksearch ,:xpath=>"//*[@id='container']/div/div[1]/div[1]/div[2]/div[2]/form/div/button")

  def enter_email
    self.username = "garvshah01@gmail.com"
  end

  def enter_password
    self.password = "manjushah2"
  end

  def click_login
    self.click
  end

  def login
    self.username = "garvshah01@gmail.com"
    self.password = "manjushah2"
    self.click
  end

  def check_email
    self.username
  end

  def check_password
    self.password
  end

  def check_login
    self.garv
  end

  def navigate
    self.goto
  end

  def check_url
    self.current_url
  end

  def search_item
    self.search = "PUMA x 1DER Rock V2 Sneakers For Men"
  end

  def click_search
    self.clicksearch
  end

  def check_search
    self.search
  end

end


