module Admin
  class FeedbacksController < Admin::BaseController
    expose_decorated(:feedbacks) { Feedback.order(created_at: :desc).page(params[:page]) }

    def index
      authorize :feedback
    end
  end
end
