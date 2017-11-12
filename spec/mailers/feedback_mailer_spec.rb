require "rails_helper"

describe FeedbackMailer do
  describe "#notify" do
    subject(:mail) { described_class.notify(feedback) }
    let(:feedback) { create(:feedback, text: "Hello World").decorate }

    around do |example|
      with_modified_env ADMIN_EMAIL: "admin@example.com" do
        example.run
      end
    end

    it "renders the headers" do
      expect(mail.subject).to eq("[task-for-interns.com] new feedback!")
      expect(mail.to).to eq(["admin@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to have_content(feedback.text)
      expect(mail.body.encoded).to have_content(feedback.name_with_email)
    end
  end
end
