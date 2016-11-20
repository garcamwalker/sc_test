Given(/^I am on the Safety Culture log in page$/) do
  @login_page = LoginPage.new
  @login_page.load
  expect(@login_page).to be_displayed
  expect(@login_page).to be_secure
end

When(/^I enter (?:a|an) (.*) (?:and|or) (.*)/) do |email, password|
  input_email(email)
  input_password(password)
end

When(/^I select Log in$/) do
  click_login
end

Then(/^I am taken to the Safety Culture dashboard$/) do
  dashboard_display
end

When(/^I enter a (.*) without a password$/) do |email|
  input_email(email)
end

Then(/^I see a password validation message$/) do
  missing_password
end

When(/^I enter my (.*) without an email address$/) do |password|
  input_password(password)
end

Then(/^I see an email validation message$/) do
  missing_email
end

Then(/^I see a link to reset my password$/) do
  incorrect_credentials
end
