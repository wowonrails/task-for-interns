require "rails_helper"

feature "Feedbacks" do
  include_context "current user signed in"
  include_examples "cannot view feedbacks", "User"
end
