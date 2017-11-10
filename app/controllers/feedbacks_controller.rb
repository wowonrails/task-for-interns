class FeedbacksController < ApplicationController
  expose :feedback

  def new
    feedback.assign_attributes(name: current_user.full_name, email: current_user.email) if current_user
  end

  def create
    feedback.save
    respond_with feedback, location: root_path
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name, :email, :text)
  end
end
