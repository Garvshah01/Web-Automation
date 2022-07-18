class Flipkart
  include Capybara::DSL
  def initialize
    visit("http://flipkart.com/")
    
  end
end


flipkart = Flipkart.new

