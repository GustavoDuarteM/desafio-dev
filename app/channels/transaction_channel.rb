# frozen_string_literal: true

class TransactionChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'transaction_channel'
  end

  def retrieve_transactions
    return unless Transaction.any?

    ActionCable.server.broadcast 'transaction_channel', Transactions::RenderTable.new.call
  end
end
