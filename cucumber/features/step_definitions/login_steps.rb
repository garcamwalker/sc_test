Given(/^I am on the Safety Culture log in page$/) do
  @login_page = LoginPage.new
  @login_page.load
  expect(@login_page).to be_displayed
  expect(@login_page).to be_secure
end

When(/^I enter a (.*) and (.*)/) do | email, password |
  input_email (email)
  input_password (password)
end

When(/^I select Log in$/) do
  click_login
end

Then(/^I am taken to the Safety Culture dashboard$/) do
  dashboard_display
end
#
# When(/^I enter my email address without a password$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then(/^I see a password validation message$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# When(/^I enter my password without an email address$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then(/^I see an email validation message$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# When(/^I enter incorrect log in details$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then(/^I see a link to reset my password$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end
