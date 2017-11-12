require "rails_helper"

feature "Feedbacks" do
  include_context "admin signed in"

  let!(:feedbacks) { create_list(:feedback, 3) }

  scenario "Admin views feedbacks" do
    visit feedbacks_path

    feedbacks.each do |feedback|
      expect(page).to have_content(feedback.name)
      expect(page).to have_content(feedback.email)
      expect(page).to have_content(feedback.text)
    end
  end
end
