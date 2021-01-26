source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production and also for caching.
gem 'redis', '~> 4.2'
# Adds the Active Storage variant method to resize uploaded images.
gem 'image_processing', '~> 1.2'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Sidekiq is used as an Active Job adapter to run async jobs in the background.
gem 'sidekiq', '~> 6.1'
# Hiredis adds "support for the faster hiredis connection library".
gem 'hiredis', '~> 0.6'

# Dotenv Rails automatically loads variables from .env files into environment variables accessible from the global variable ENV.
gem 'dotenv-rails', '~> 2.7'

# Friendly ID allows changing which model attribute is used as the slug in URL permalinks.
gem 'friendly_id', '~> 5.4'

# Devise adds user authentication.
gem 'devise', '~> 4.7'
# Pundit adds user authorization.
gem 'pundit', '~> 2.1'

# Paper Trail tracks and stores changes to models.
gem 'paper_trail', '~> 11.1'
# Authtrail is used to track and store user's login activities.
gem 'authtrail', '~> 0.2'
# Ahoy Matey tracks user analytics and stores them in the application database (not a 3rd party server).
gem 'ahoy_matey', '~> 3.1'
# Ahoy Email tracks email analytics (emails opened and links in emails clicked) and stores them in the application database (not a 3rd party server).
gem 'ahoy_email', '~> 1.1'

group :development, :test do
  # RSpec Rails replaces Rail's default testing framework.
  gem 'rspec-rails', '~> 4.0'
  # Factory Bot Rails replaces Rail's default test fixtures with factories.
  gem 'factory_bot_rails', '~> 6.1'

  # "Pry is a runtime developer console and IRB alternative..."
  gem 'pry', '~> 0.13'
  # Pry Rails configures the 'rails console' command to launch as a pry console.
  gem 'pry-rails', '~> 0.3'
  # Pry Byebug adds debugger commands to the pry console.
  gem 'pry-byebug', '~> 3.9'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Better Errors replaces Rail's default error page with an improved, interactive error page.
  gem 'better_errors', '~> 2.9'
  # Binding of Caller is used by Better Errors to enable its advanced features.
  gem 'binding_of_caller', '~> 1.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
