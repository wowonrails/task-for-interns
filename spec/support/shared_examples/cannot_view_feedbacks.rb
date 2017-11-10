shared_examples "cannot view feedbacks" do |client|
  let(:feedbacks) { create_list(:feedback, 3) }

  scenario "#{client} can not view feedbacks" do
    visit feedbacks_path

    feedbacks.each do |feedback|
      expect(page).not_to have_content(feedback.name)
      expect(page).not_to have_content(feedback.email)
      expect(page).not_to have_content(feedback.text)
    end
  end
end
