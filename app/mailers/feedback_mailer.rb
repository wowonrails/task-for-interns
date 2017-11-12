class FeedbackMailer < ApplicationMailer
  def notify(feedback)
    @feedback = feedback.decorate

    mail to: ENV.fetch("ADMIN_EMAIL")
  end
end
