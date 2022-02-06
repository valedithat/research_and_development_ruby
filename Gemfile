source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

gem 'rails', '~> 6.1.4', '>= 6.1.4.4'
gem 'pg'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'annotate'
  gem 'better_errors'
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'pry'
  gem 'rails_best_practices'
  gem 'rspec-rails'
  gem 'rubocop-rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'selenium-webdriver'
  gem 'simplecov'
  gem 'timecop'
  gem 'webdrivers'
  gem 'webmock'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
