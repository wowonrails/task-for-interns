require "rails_helper"

feature "Ceate Feedback" do
  let(:attributes) { attributes_for(:feedback) }

  scenario "Visitor creates feedback" do
    visit new_feedback_path

    fill_form_and_submit(:feedback, :new, attributes)

    expect(page).to have_content("Feedback was successfully send!")
  end
end
