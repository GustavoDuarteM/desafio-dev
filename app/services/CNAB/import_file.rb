# frozen_string_literal: true

module CNAB
  class ImportFile
    def initialize(file)
      @file = file
    end

    def call
      @file.each_line do |line|
        cnab = CNAB::InterpreterLine.new(line).call
        CNAB::CreateTransaction.new(cnab).call
      end
    end
  end
end
