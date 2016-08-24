ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/controller.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'pry'

begin
  require 'database_cleaner'
  require 'database_cleaner/cucumber'

  DatabaseCleaner.strategy = :truncation
rescue NameError
  raise 'You need to add database_cleaner to your Gemfile '\
        '(in the :test group) if you wish to use it.'
end

Around do |scenario, block|
  DatabaseCleaner.cleaning(&block)
end

Capybara.app = SlowFood

class SlowFoodWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  SlowFoodWorld.new
end
