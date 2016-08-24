ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/controller.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'pry'

Capybara.app = SlowFood

class SlowFoodWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  SlowFoodWorld.new
end
