source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

gem "font-awesome-rails"

gem "rails", "~> 7.0.4", ">= 7.0.4.2"

gem "sprockets-rails"

gem "sqlite3", "~> 1.4"

gem "puma", "~> 5.0"

gem "importmap-rails"

gem "turbo-rails"

gem "stimulus-rails"

gem "jbuilder"

gem "bootsnap", require: false

gem 'bcrypt'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :production do
  gem "pg"
end
