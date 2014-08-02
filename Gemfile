source 'https://rubygems.org'
ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 4.1.4'

# Use sqlite3 as the database for Active Record
gem 'pg', '>= 0.17.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Web servers
# gem 'unicorn'
gem 'thin'


# Use Capistrano for deployment
gem 'capistrano', group: :development

# Use debugger
#gem 'debugger', group: [:development, :test]

# Styles
gem 'bootstrap-sass'
gem 'autoprefixer-rails'
gem 'font-awesome-rails'
# gem 'normalize-rails' #  *= require normalize-rails

gem 'devise'
gem 'paperclip'
gem 'aws-sdk'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'google-analytics-rails'
gem 'newrelic_rpm'
gem 'spreedly'


group :development do
	gem 'quiet_assets'
	gem 'better_errors'
  gem 'binding_of_caller'
end

group :test, :development do
  gem 'guard-rspec'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'zeus'
end

group :test do
  gem 'capybara'
  gem 'poltergeist'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'codeclimate-test-reporter', require: false
  gem 'coveralls', require: false
end

group :production do
  gem 'rails_12factor'
  gem 'passenger'
end
