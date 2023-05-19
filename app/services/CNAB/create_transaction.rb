# frozen_string_literal: true

module CNAB
  class CreateTransaction
    def initialize(cnab)
      @cnab = cnab
    end

    def call
      Transaction.new(@cnab).save
    end
  end
end
