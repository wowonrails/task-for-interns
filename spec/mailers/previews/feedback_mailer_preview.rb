class FeedbackMailerPreview < ActionMailer::Preview
  def notify_instructions
    FeedbackMailer.notify(Feedback.first)
  end
end
