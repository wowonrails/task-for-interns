class Feedback < ApplicationRecord
  validates :name, :email, :text, presence: true
  validates :email, format: Devise.email_regexp
end
