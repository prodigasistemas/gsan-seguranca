source 'https://rubygems.org'

gem 'rails', '4.2.7'
gem 'sass-rails', '~> 5.0.6'
gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'
gem 'rest-client'
gem 'dotenv-rails'

gem 'kaminari'

gem 'log_file', github: 'prodigasistemas/log_file'
gem 'exception_notification'
gem 'slack-notifier'

group :development, :test do
  gem 'pry-rails'
  gem 'awesome_print', require: 'ap'
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.0'
  gem 'capistrano', '3.5.0'
  gem 'capistrano-rvm'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'quiet_assets'
  gem 'thin'
end

group :test do
  gem 'rspec-mocks'
  gem 'shoulda-matchers', '~> 3.1'
end

group :production do
  gem 'unicorn'
end
