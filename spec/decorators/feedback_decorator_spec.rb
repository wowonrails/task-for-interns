require "rails_helper"

describe FeedbackDecorator do
  subject(:decorated_feedback) { described_class.decorate(feedback) }

  let(:feedback) { build(:feedback) }

  it "#name_with_email" do
    expect(decorated_feedback.name_with_email).to eq("#{feedback.name} (#{feedback.email})")
  end
end
