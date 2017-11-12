shared_examples "granted only for admin" do |action, resource|
  subject { described_class.new(user, resource) }

  context "when user is not admin" do
    let(:user) { create(:user) }

    it { is_expected.to forbid_action(action) }
  end

  context "when user is admin" do
    let(:user) { create(:user, :admin) }

    it { is_expected.to permit_action(action) }
  end
end
