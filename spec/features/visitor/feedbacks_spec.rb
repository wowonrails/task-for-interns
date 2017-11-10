require "rails_helper"

feature "Feedbacks" do
  include_examples "cannot view feedbacks", "Visitor"
end
