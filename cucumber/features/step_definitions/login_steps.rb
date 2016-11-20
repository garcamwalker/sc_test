# Given(/^I am on the Safety Culture log in page$/) do
#   visit('https://app.safetyculture.io/#/login')
# end
Given(/^I am on the Safety Culture log in page$/) do
  @login_page = LoginPage.new
  @login_page.load
  expect(@login_page).to be_displayed
  expect(@login_page).to be_secure
end

# When(/^I enter a address$/) do
#   input_email
# end

When(/^I enter a (.*) address$/) do |email|
  input_email (email)
end

# When(/^I enter a (.*)$/) do |password|
#
# end
#
#
# When(/^I select Log in$/) do
#
# end
#
# Then(/^I am directed to the Safety Culture dashboard$/) do
#
# end
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
