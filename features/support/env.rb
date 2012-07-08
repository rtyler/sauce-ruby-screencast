require 'capybara/cucumber'
require 'sauce/capybara'
require 'sauce/capybara/cucumber'


Capybara.default_wait_time = 10

Sauce.config do |config|
  config[:browser] = 'chrome'
  config[:browser_version] = ''
  config[:os] = :XP
end
