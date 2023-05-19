# frozen_string_literal: true

module Transactions
  class Balance
    def call
      income - outcome
    end

    private

    def value_transactions_by_type
      @value_transactions_by_type ||= Transaction.group(:transaction_type).sum(:value)
    end

    def income
      value_transactions_by_type.slice(1, 4, 5, 6, 7, 8).reduce(0) do |accumulator, result|
        _key, value = result
        accumulator + value
      end
    end

    def outcome
      value_transactions_by_type.slice(2, 3, 9).reduce(0) do |accumulator, result|
        _key, value = result
        accumulator + value
      end
    end
  end
end
