source "https://rubygems.org"

ruby "2.4.2"

gem "pg"
gem "rails", "5.1.2"

# assets
gem "autoprefixer-rails"
gem "coffee-rails"
gem "foundation-icons-sass-rails"
gem "foundation-rails"
gem "mini_racer"
gem "premailer-rails"
gem "sass-rails", "~> 5.0.0", ">= 5.0.6"
gem "uglifier", ">= 2.7.2"

source "https://rails-assets.org" do
  gem "rails-assets-jquery-ujs"
  gem "rails-assets-jquery2"
end

# views
gem "active_link_to"
gem "inky-rb", require: "inky"
gem "meta-tags"
gem "simple_form"
gem "slim"

# all other gems
gem "decent_decoration"
gem "decent_exposure"
gem "devise"
gem "draper"
gem "flamegraph"
gem "google-analytics-rails"
gem "health_check"
gem "interactor"
gem "kaminari"
gem "memory_profiler"
gem "puma"
gem "pundit"
gem "rack-canonical-host"
gem "rack-mini-profiler", require: false, git: "https://github.com/MiniProfiler/rack-mini-profiler.git"
gem "responders"
gem "rollbar"
gem "seedbank"
gem "stackprof"

# Background jobs
gem "sidekiq"

group :staging, :production do
  gem "newrelic_rpm"
end

group :test do
  gem "capybara"
  gem "capybara-email"
  gem "climate_control"
  gem "codeclimate-test-reporter", require: false
  gem "database_cleaner"
  gem "formulaic"
  gem "guard-rspec"
  gem "launchy"
  gem "poltergeist"
  gem "pundit-matchers"
  gem "rspec-its"
  gem "rspec-sidekiq"
  gem "shoulda-matchers"
  gem "terminal-notifier-guard"
  gem "webmock", require: false
end

group :development, :test do
  gem "awesome_print"
  gem "brakeman", require: false
  gem "bullet"
  gem "bundler-audit", require: false
  gem "byebug"
  gem "coffeelint"
  gem "dotenv-rails"
  gem "jasmine", "> 2.0"
  gem "jasmine-jquery-rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.5"
  gem "rubocop", require: false
  gem "rubocop-rspec", require: false
  gem "scss_lint", require: false
  gem "slim_lint", require: false
end

group :staging, :development, :test do
  gem "factory_girl_rails"
  gem "faker"
end

group :development do
  gem "letter_opener"
  gem "rails-erd"
  gem "slim-rails"
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen"
  gem "web-console"
end
