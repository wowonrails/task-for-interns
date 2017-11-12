require "rails_helper"

describe SendFeedbackNotificationWorker do
  let(:feedback) { create(:feedback) }

  it { is_expected.to be_retryable true }

  it "sends email to sidekiq" do
    expect { described_class.perform_async(feedback.id) }.to change(FeedbackMailer.deliveries, :size).by(1)
  end
end
