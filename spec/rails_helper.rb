ENV['RAILS_ENV'] ||= 'test'
require 'rspec/rails'
require 'spec_helper'

# Prevent database truncation if the environment is production
abort('The Rails environment is running in production mode!') if Rails.env.production?

require File.expand_path('../config/environment', __dir__)

require 'database_cleaner/active_record'
require 'capybara/rspec'

Dir[Rails.root.join('spec', 'support', '**', '*.rb')].sort.each { |f| require f }

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
