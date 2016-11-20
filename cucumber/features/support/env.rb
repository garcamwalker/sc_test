require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

require 'rspec/expectations'
require 'capybara/cucumber'
require 'capybara/poltergeist'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
end
