class FeedbacksQuery
  attr_reader :relation, :params

  def initialize(params, relation = Feedback.all)
    @relation = relation
    @params = params
  end

  def self.all(*args)
    new(*args).all
  end

  def all
    relation
      .where("name iLIKE ? OR email iLIKE ? OR text iLIKE ?", query, query, query)
      .order(created_at: :desc)
  end

  private

  def query
    "%#{params[:search]}%"
  end
end
