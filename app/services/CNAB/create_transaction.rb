module CNAB
  class CreateTransaction
    def initialize(cnab)
      @cnab = cnab
    end

    def call
      Cnab.new(@cnab).save
    end
  end
end