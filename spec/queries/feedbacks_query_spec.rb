require "rails_helper"

describe FeedbacksQuery do
  describe ".all" do
    let(:params) { {} }
    let(:feedback_double) { instance_double(Feedback) }
    let(:described_class_double) { instance_double(described_class) }

    before do
      allow(described_class).to receive(:new).and_return(described_class_double)
      allow(described_class_double).to receive(:all).and_return(feedback_double)
    end

    it "returns collection" do
      result = described_class.all(params)

      expect(result).to eq(feedback_double)
    end
  end

  describe "#all" do
    subject(:collection) { described_class.new(params) }

    let(:params) { { search: "john" } }

    let!(:feedback_from_john) do
      create(:feedback,
        name: "John Smith",
        email: "john@example.com",
        text: "Hello")
    end

    before do
      create(:feedback, name: "Michael Brown", email: "misha@example.com", text: "Help")
    end

    it "returns one feedback" do
      expect(collection.all.count).to eq(1)
      expect(collection.all).to contain_exactly(feedback_from_john)
    end
  end
end
