require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

require 'rspec/expectations'
require 'capybara/cucumber'
require 'capybara/poltergeist'

# register local browser driver
# Capybara.register_driver :selenium do |app|
#   Selenium::WebDriver::Chrome.driver_path = chromedriver_path
#   http_client = Selenium::WebDriver::Remote::Http::Default.new
#   http_client.timeout = 120
#   Capybara::Selenium::Driver.new(app, browser: browser_name.to_sym, http_client: http_client)
# end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
end

# Capybara.run_server = false
# Capybara.default_driver = :selenium



