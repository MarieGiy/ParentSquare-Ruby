### file config
require "bundler/inline"

gemfile do
  source "https://rubygems.org"

  gem "capybara"
  gem "selenium-webdriver"
  gem "dotenv"
end

### script config
require "capybara"
require "capybara/dsl"
require "dotenv"

Capybara.current_driver = :selenium
Capybara.default_max_wait_time = 5
Dotenv.load(".env")

include Capybara::DSL
