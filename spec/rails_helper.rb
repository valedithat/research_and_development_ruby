ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'

# Prevent database truncation if the environment is production
abort('The Rails environment is running in production mode!') if Rails.env.production?

require File.expand_path('../config/environment', __dir__)
require 'rspec/rails'
require 'database_cleaner/active_record'
require 'capybara/rspec'

Dir[Rails.root.join('spec', 'support', '**', '*.rb')].sort.each { |f| require f }

# Checks for pending migrations and applies them before tests are run.
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

RSpec.configure do |config|
  # factory_bot_rails, use factory bot methods
  config.include FactoryBot::Syntax::Methods

  # If run each of your examples within a transaction, assign false
  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!
  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
end
