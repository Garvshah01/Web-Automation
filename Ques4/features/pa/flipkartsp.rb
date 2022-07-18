require 'rspec'
class Flipkart < SitePrism::Page
  set_url 'https://www.flipkart.com/'
  element :email , :xpath ,'/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input'
  element :password , :xpath, '/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input'
  element :login_button , :xpath ,'/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button'
  element :user, :xpath , "//*[@id='container']/div/div[1]/div[1]/div[2]/div[3]/div/div/div/div"
  
  
  def initialize
    load
  end

  def login
    email.set 'garvshah01@gmail.com'
    password.set 'manjushah2'
    login_button.click
  end

  def enter_email
    email.set 'garvshah01@gmail.com'
  end

  def enter_password
    password.set 'manjushah2'
  end

  def click_login
    login_button.click
  end

  def check_email
    email["value"]
  end

  def check_password
    password["value"]
  end

  def check_login
    user.text
  end
end

class SearchItem < Flipkart
  
  set_url "http://www.flipkart.com"
  element :search , :xpath,"//*[@id='container']/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input"
  element :search_button , :xpath , "//*[@id='container']/div/div[1]/div[1]/div[2]/div[2]/form/div/button"

  def initialize
    load
  end

  def enter_item(item)
    search.set item
  end

  def click_search_button
    search_button.click
  end

  def enter_text
    search.value
  end
end

