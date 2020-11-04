require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'rspec'
require 'selenium-webdriver'
require 'webdrivers'
require 'site_prism'
require_relative 'page_helper.rb'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(ScreenObjects)

Capybara.register_driver :selenium do |driver|
    Capybara::Selenium::Driver.new(
        driver,
        browser: :chrome,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
            'chromeOptions' => {
                'args' => [
                    '--disable-infobars',
                    'window-size = 1600,1024'
                ]
            }
        )
    )
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 15
end
