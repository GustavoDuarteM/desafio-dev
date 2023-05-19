# frozen_string_literal: true

module CNAB
  class ProcessFileJob < ApplicationJob
    queue_as :default

    def perform(file_name)
      CNAB::ProcessFile.new(file_name).call
      ActionCable.server.broadcast('transaction_channel', Transactions::RenderTable.new.call)
    end
  end
end
