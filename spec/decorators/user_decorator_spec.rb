require "rails_helper"

describe UserDecorator do
  subject(:decorated_user) { described_class.decorate(user) }

  let(:user) { build(:user) }

  it "#full_name_with_email" do
    expect(decorated_user.full_name_with_email).to eq("#{user.full_name} (#{user.email})")
  end
end
