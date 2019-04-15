require 'capybara'
require 'capybara/cucumber'
require 'faker'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

@browser = ENV['BROWSER']

if @browser.eql?('headless')
    Capybara.javascript_driver = :selenium
    Capybara.run_server = false

    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => {'args' => ['--no-default-browser-check']}
    )

    Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(
            app,
            :browser => :remote,
            :url => "http://selenium:4444/wd/hub",
            :driver_path => "/usr/bin/",
            :desired_capabilities => caps
        )
    end
else
    puts 'executando sem headless'
end

Capybara.configure do |config|
    config.default_driver = :selenium_chrome # roda teste no chrome
    config.default_max_wait_time = 30
end
