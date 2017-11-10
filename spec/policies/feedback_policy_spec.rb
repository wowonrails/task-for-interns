require "rails_helper"

describe FeedbackPolicy do
  subject { described_class.new(user, :feedback) }

  let(:user) { create(:user) }

  context "user is not admin" do
    it { is_expected.to forbid_action(:index) }
  end

  context "user is admin" do
    before do
      user.admin!
    end

    it { is_expected.to permit_action(:index) }
  end
end
