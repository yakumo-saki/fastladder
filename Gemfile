source 'https://rubygems.org'
gem 'rails', '~> 4.2', '>= 4.2.11.3'
gem 'bundler', '~> 1.16', '>= 1.16.2'

# https://zenn.dev/harasho/articles/undefined-method-new-for-big-decimal-class
gem "bigdecimal", "1.4.4"

# Include database gems for the adapters found in the database
# configuration file or DATABASE_URL
require 'erb'
require 'uri'
require 'yaml'

# databases
gem 'mysql2'
gem 'pg', '~> 0.15'
gem 'sqlite3', '~> 1.3.6'

# Feedjira undefined method `parse' for Feedjira::Feed:Class (dropped on 3.0)
#gem 'feedjira', '~> 2.2'
gem 'feedjira'

# i18n-js v4 has breaking change
gem 'i18n-js', '~> 3.9', '>= 3.9.2'

gem 'addressable', require: 'addressable/uri'
gem 'coffee-rails', '~> 4.1.0'
gem 'feed_searcher', '>= 0.0.6'
gem 'haml'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'mini_magick'
gem 'opml', git: 'https://github.com/fastladder/opml'
gem 'sass-rails', '~> 5.0.0'
gem 'settingslogic'
gem 'uglifier', '>= 1.3.0'

if ENV['NEW_RELIC_LICENSE_KEY']
  gem 'newrelic_rpm'
end

group :development, :test do
  gem 'pry-byebug'
end

group :development do
  gem 'annotate'
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'quiet_assets'
end

group :test do
  gem 'capybara'
  gem 'coveralls', require: false
  gem 'factory_bot_rails'
  gem 'konacha'
  gem 'launchy'
  gem 'poltergeist'
  gem 'rspec-activemodel-mocks'
  gem 'rspec-rails'
  gem 'simplecov'
  gem 'simplecov-rcov'
  gem 'sinon-rails'
  gem 'puma'
  gem 'webmock'
end

group :production do
  gem 'rails_12factor'
  gem 'unicorn'
end
