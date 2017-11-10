require "rails_helper"

feature "Ceate Feedback" do
  include_context "current user signed in"

  let(:attributes) { attributes_for(:feedback) }

  scenario "User creates feedback" do
    visit new_feedback_path

    expect(page).to have_field("Name", with: current_user.full_name)
    expect(page).to have_field("Email", with: current_user.email)

    fill_form_and_submit(:feedback, :new, attributes)

    expect(page).to have_content("Feedback was successfully send!")
  end
end
