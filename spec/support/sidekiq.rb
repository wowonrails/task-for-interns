require "sidekiq/testing"

RSpec.configure do |config|
  config.before(:all) do
    Sidekiq::Testing.inline!
  end
  config.before(:each) do
    Sidekiq::Worker.clear_all
  end
end

RSpec::Sidekiq.configure do |config|
  config.warn_when_jobs_not_processed_by_sidekiq = false
end
