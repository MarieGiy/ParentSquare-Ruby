require_relative "../config"

require "dotenv"
require "rspec"

require "capybara"
require "capybara/dsl"
require "capybara/rspec"

Capybara.current_driver = :selenium
Capybara.default_max_wait_time = 5
Capybara.run_server = false # don't start Rack

Dotenv.load("../.env")
