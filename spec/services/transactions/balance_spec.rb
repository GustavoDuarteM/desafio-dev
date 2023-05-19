 require 'rails_helper'

 RSpec.describe Transactions::Balance do
  describe "#call" do
    subject { balance.call }
    let(:balance) { described_class.new }

    before do
      allow(balance).to receive(:value_transactions_by_type).and_return(
        { 1 => 100, 9 => 25 }
      )
    end

    it "calculates the balance correctly" do
      expect(subject).to eq(75)
    end
  end
end