require "rails_helper"

feature "Search Feedbacks" do
  include_context "admin signed in"

  let!(:feedback_from_john) do
    create(:feedback,
      name: "John Smith",
      email: "john@example.com",
      text: "Hello")
  end

  let!(:feedback_from_misha) do
    create(:feedback,
      name: "Michael Brown",
      email: "misha@example.com",
      text: "Help")
  end

  background do
    visit feedbacks_path
  end

  scenario "Admin views and searches feedbacks" do
    expect(page).to have_content(feedback_from_john.text)
    expect(page).to have_content(feedback_from_misha.text)

    fill_form_and_submit(:feedbacks, :submit, "feedbacks[search]" => "john")

    expect(page).to have_content(feedback_from_john.text)
    expect(page).not_to have_content(feedback_from_misha.text)

    fill_form_and_submit(:feedbacks, :submit, "feedbacks[search]" => "Help")

    expect(page).not_to have_content(feedback_from_john.text)
    expect(page).to have_content(feedback_from_misha.text)
  end
end
