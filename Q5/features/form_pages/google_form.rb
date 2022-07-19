

class GoogleForm
  include PageObject
  include DataMagic
  DataMagic.yml_directory = "C:/Users/garvs/OneDrive/Desktop/Cucumber/Q5/features/data"
  DataMagic.load "data.yml"

  page_url("https://forms.gle/BmiAoxWW2ebAVbRU8")

  text_field(:name,:xpath =>"//*[@id='mG61Hd']/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input")
  text_field(:email,:xpath =>"//*[@id='mG61Hd']/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div[1]/div/div[1]/input")
  text_area(:address,:xpath =>"//*[@id='mG61Hd']/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[1]/div[2]/textarea")
  text_field(:phone,:xpath =>"//*[@id='mG61Hd']/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input")
  text_field(:cgpa,:xpath =>"//*[@id='mG61Hd']/div[2]/div/div[2]/div[5]/div/div/div[2]/div/div[1]/div/div[1]/input")
  text_area(:list_project,:xpath =>"//*[@id='mG61Hd']/div[2]/div/div[2]/div[6]/div/div/div[2]/div/div[1]/div[2]/textarea")
  div(:button, :xpath => '//*[@id="mG61Hd"]/div[2]/div/div[3]/div[1]/div[1]/div')
  div(:submit_text, :class => 'vHW8K')

  def fill_form
    populate_page_with data_for(:googleform)
    button_element.click
  end

  def submit_successfully
    submit_text
  end
end


