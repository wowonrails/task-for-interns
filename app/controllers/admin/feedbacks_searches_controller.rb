module Admin
  class FeedbacksSearchesController < Admin::BaseController
    expose_decorated(:feedbacks) { FeedbacksQuery.all(feedbacks_search_params).page(params[:page]).per(20) }

    def show
      authorize :feedback

      render "admin/feedbacks/_table", feedbacks: feedbacks, layout: false
    end

    private

    def feedbacks_search_params
      params.require(:feedbacks).permit(:search)
    end
  end
end
