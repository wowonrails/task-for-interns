class FeedbackPolicy < ApplicationPolicy
  delegate :admin?, to: :user

  def index?
    admin?
  end

  def show?
    index?
  end
end
