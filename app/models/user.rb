class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
    :recoverable, :rememberable, :trackable, :validatable

  enum role: %i[user admin]

  validates :full_name, presence: true
end
