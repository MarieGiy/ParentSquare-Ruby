require_relative "config"

require "dotenv"
require "capybara"
require "capybara/dsl"

Capybara.current_driver = :selenium
Capybara.default_max_wait_time = 5
