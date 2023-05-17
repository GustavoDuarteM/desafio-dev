module CNAB
  class ProcessFile
    def initialize(file_name)
      @file_name = file_name
    end

    def call
      file = CNAB::RetrieveFile.new(@file_name).call
      CNAB::ImportFile.new(file).call
    end
  end
end