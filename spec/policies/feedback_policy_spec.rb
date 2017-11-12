require "rails_helper"

describe FeedbackPolicy do
  describe "#index" do
    include_examples "granted only for admin", :index, :feedback
  end

  describe "#show" do
    include_examples "granted only for admin", :show, :feedback
  end
end
