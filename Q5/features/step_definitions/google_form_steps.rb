require_relative "../form_pages/google_form.rb"
Given('I am at Google form page') do
  @gform = GoogleForm.new(@browser)
  @gform.goto
end

When('Form is filled and Submit Button is click') do 
  @gform.fill_form
end

Then('The response is submitted') do
  expect(@gform.submit_successfully).to eq('Thanks for submitting your contact info!')
end