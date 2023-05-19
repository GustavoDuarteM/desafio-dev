# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Transactions::RenderTable do
  describe '#call' do
    subject(:render_table) { described_class.new.call }

    let(:transactions) { Transaction.all.order(store_name: :asc) }
    let(:balance) { Transactions::Balance.new.call }

    before do
      create_list(:transaction, 3)
    end

    it 'renders the transactions table' do
      expect(render_table).to eq(
        ApplicationController.render(
          partial: 'transaction/partials/transactions_table',
          locals: { transactions: transactions, balance: balance.to_f }
        )
      )
    end
  end
end
