ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  require './test/helpers/fixture_file_helpers.rb'
  ActiveRecord::FixtureSet.context_class.send :include, FixtureFileHelpers
  # Add more helper methods to be used by all tests here...
end
