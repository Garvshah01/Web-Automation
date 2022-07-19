Given('I am at Google form page') do
  @gform = GoogleForm.new(@browser)
end

When('Form is filled and Submit Button is click') do 
  @gform.fill_form
end

Then('The response is submitted') do
  true
end