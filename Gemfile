source 'https://rubygems.org'

ruby '3.4.1'

gem 'rails', '~> 8.1.3'
gem 'sqlite3', '>= 2.1'
gem 'puma', '>= 5.0'
gem 'sprockets-rails'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'bootsnap', require: false

# Pagination
gem 'kaminari'

# SEO optimization
gem 'meta-tags'

# Bootstrap 4 (keeping 4.x to avoid view-layer rewrite)
gem 'bootstrap', '~> 4.3.1'
gem 'font_awesome5_rails'

# Ruby 3.4 extracted gems
gem 'logger'
gem 'ostruct'
gem 'mutex_m'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw], require: 'debug/prelude'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
