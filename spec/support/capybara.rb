require "capybara/poltergeist"
require "capybara/email/rspec"

Capybara.configure do |config|
  config.match = :prefer_exact
  config.javascript_driver = :poltergeist
  config.asset_host = "http://#{ENV.fetch('HOST')}"
  config.app_host = "http://#{ENV.fetch('HOST')}"
end
