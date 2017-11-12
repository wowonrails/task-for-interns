shared_context "admin signed in" do
  let(:admin) { create :user, :admin }

  background do
    login_as admin
  end
end
