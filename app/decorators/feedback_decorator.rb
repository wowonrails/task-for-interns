class FeedbackDecorator < ApplicationDecorator
  delegate_all

  def name_with_email
    "#{name} (#{email})"
  end
end
