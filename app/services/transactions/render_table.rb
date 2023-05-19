# frozen_string_literal: true

module Transactions
  class RenderTable
    def call
      transactions = Transaction.all.order(store_name: :asc)
      balance = Transactions::Balance.new.call
      ApplicationController.render(
        partial: 'transaction/partials/transactions_table',
        locals: { transactions: transactions, balance: balance.to_f }
      )
    end
  end
end
