source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
#gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

############### INTERNATIONAL ################
#gem 'i18n', '~> 1.8', '>= 1.8.5'

############### MEMBERSHIP ################
gem 'devise', '~> 4.7', '>= 4.7.3'
#gem 'devise_invitable', '~> 2.0', '>= 2.0.2' #referral program

############### STYLES ################

gem 'bootstrap', '~> 4.5', '>= 4.5.2'
gem 'bootstrap-datepicker-rails', '~> 1.9', '>= 1.9.0.1'
gem 'bootstrap_form', '~> 4.5' # More info:  https://github.com/bootstrap-ruby/bootstrap_form
gem 'tailwindcss', '~> 1.0', '>= 1.0.3'

############### ICONS #################
#gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.5'


############### FORM AND  URL BUILDER ###########
gem 'friendly_id', '~> 5.4'
gem 'simple_form', '~> 5.0', '>= 5.0.2'#http://simple-form-bootstrap.plataformatec.com.br/

############### JS ###########
gem 'jquery-rails'


# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  #ERRORS MESSAGES
  gem 'best_errors', '~> 0.1.4'
  #gem "binding_of_caller"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


#reat time chat feature:
#https://dev-video.herokuapp.com/
