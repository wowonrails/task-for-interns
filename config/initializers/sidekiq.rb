Sidekiq.configure_server do
  Rails.logger = Sidekiq::Logging.logger
end
