class FeedbackPolicy < ApplicationPolicy
  def index?
    user.admin?
  end
end
