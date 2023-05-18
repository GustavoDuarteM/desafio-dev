class TransactionChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'transaction_channel'
  end
end
