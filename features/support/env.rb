require 'capybara'
require 'capybara/cucumber'
require 'faker'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome # roda teste no chrome
    config.default_max_wait_time = 30
end
