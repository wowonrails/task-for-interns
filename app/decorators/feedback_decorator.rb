class FeedbackDecorator < ApplicationDecorator
  delegate :name, :email, :text
end
