require 'selenium-webdriver'
require 'page-object'

caps = Selenium::WebDriver::Remote::Capabilities.chrome('goog:chromeOptions' => {detach: true})
$browser = Selenium::WebDriver.for :chrome
$browser.manage.window.maximize
$browser.manage.timeouts.implicit_wait = 10

class SnakeMagic
  include PageObject
  page_url("https://"+"admin"+":"+"admin"+"@"+"automation-frontend.snackmagic.com/")

  #visit login site
  button(:visit_login,:xpath=>"//*[@id='root']/div/div[2]/div/div/div/div/div[3]/header/div[2]/div[3]/div[2]/button")

  #login
  text_field(:email, :xpath=> '//*[@id="form-login"]/div[1]/input')
  text_field(:password, :xpath=> '//*[@id="form-login"]/div[2]/input')
  button(:login, :xpath=> '//*[@id="form-login"]/div[3]/div/button')

  #click start an order
  link(:start_order_button,:text=> 'Start an order')
  link(:start_new_order,:text=> 'or, Start a New Order')
  button(:cookie_accept, :xpath=> '//*[@id="onetrust-accept-btn-handler"]')

  text_field(:treat_name, :id => 'treatName')
  text_field(:from, :id => 'senderName')
  span(:team , :xpath=> '//*[@id="send-a-treat"]/div[2]/div[2]/div[1]/div/label/div/div/span')
  div(:s, :xpath => "//*[@id='send-a-treat']/div[3]/div[2]/div[3]/div/label/div[1]/div[1]/div[1]")
  button(:create_order, :xpath => '//*[@id="root"]/div/div[2]/div/div/div/div/div[2]/div/div/div/div[2]/div/button')

  
  def fill_details
    self.treat_name = "Garv Shah"
    self.from = "Vinsol"
    sleep 1
    self.team_element.click
    self.s_element.click
    self.create_order
    sleep 5
  end

 
  

  def navigate
    self.goto
    sleep 2
  end
  def click_login
    self.visit_login
    sleep 1
  end
  def user_login
    uemail = "avneet+4444@vinsol.com"
    upassword = "Vinsol1."
    self.email = uemail
    self.password = upassword
    self.login
  end
  
  def start_an_order
    self.start_order_button
    if(cookie_accept? == true)
      cookie_accept
    end
    self.start_new_order
  end

  #Budget + Treat
  labels(:select_choice , :class => "custom-border-radio-content")
  elements(:next , :class => "button-program-green")
  text_field(:total_r , :id => "expectedCount")
  text_field(:total_itr , :if => "internationalCount")

  button(:proceed, :class=>"btn-primary")

  def customize_order
    #treat type
    self.select_choice_elements[0].click
    self.next_elements[0].click
    sleep 1
    # budget
    self.select_choice_elements[1].click
    self.next_elements[0].click
    sleep 2

    self.select_choice_elements[0].click
    self.next_elements[0].click
    sleep 2

    self.total_r = 74
    self.total_itr = 10
    sleep 2

    self.next_elements[0].click
    sleep 2

    self.select_choice_elements[1].click
    self.next_elements[0].click
    sleep 2

    self.next_elements[0].click
    sleep 2

    self.select_choice_elements[0].click
    self.next_elements[0].click
    sleep 2
    
    self.next_elements[0].click
    sleep 2

    self.select_choice_elements[6].click
    self.next_elements[0].click
    sleep 2
    
    self.proceed
    sleep 5

    self.select_choice_elements[0].click
    self.next_elements[0].click
    sleep 2

    self.select_choice_elements[1].click
    self.next_elements[0].click
    sleep 2

    self.select_choice_elements[2].click
    self.next_elements[0].click
    sleep 2

  end

end

obj = SnakeMagic.new($browser)
obj.navigate
obj.click_login
obj.user_login
obj.start_an_order
obj.fill_details
obj.customize_order