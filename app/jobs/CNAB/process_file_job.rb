module CNAB
  class ProcessFileJob < ApplicationJob
    queue_as :default

    def perform(file_name)
      CNAB::ProcessFile.new(file_name).call
    end
  end
end