class SendFeedbackNotificationWorker
  include Sidekiq::Worker

  def perform(feedback_id)
    feedback = Feedback.find(feedback_id)

    FeedbackMailer.notify(feedback).deliver!
  end
end
