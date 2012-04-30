source 'http://rubygems.org'

gem "rails", "3.1.0"

gem 'sqlite3'
gem "simple-navigation"
gem 'passenger'
gem 'haml'
gem 'devise'
gem "cancan"
gem 'carrierwave'
gem 'mini_magick'
gem 'inherited_resources'
gem 'compass', "0.12.alpha.0"
gem 'sunspot_rails'
gem 'progress_bar'
gem 'client_side_validations'
gem 'mercury-rails', git: 'https://github.com/jejacks0n/mercury.git', ref: 'a2b16bcdc9'
gem 'meta_search'

group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

group :development do
  gem 'sunspot_solr'
end

gem "jquery-rails"

group :development, :test do
  gem 'rspec-rails'
  gem 'cucumber-rails'
  gem 'spork'
  gem 'capybara-webkit'
  gem 'launchy'
  gem 'database_cleaner'

  # Growl notify
  gem 'ruby_gntp'

  gem 'guard-bundler'
  gem 'guard-spork'
  gem 'guard-cucumber'
  gem 'guard-rspec'
  gem 'guard-passenger'
end

group :production do
  gem 'mysql2'
end
