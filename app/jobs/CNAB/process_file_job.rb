module CNAB
  class ProcessFileJob < ApplicationJob
    queue_as :default

    def perform(file_name)
      CNAB::ProcessFile.new(file_name).call
      table = ApplicationController.render(partial: 'transaction/partials/transactions_table', locals: { transactions: Transaction.all })
      ActionCable.server.broadcast('transaction_channel', table)
    end
  end
end