module CNAB
  class InterpreterLine
    def initialize(line)
      @line = line
    end

    def call
      Cnab.new(interpreted_line)
    end

    private

    def interpreted_line
      {
        transaction_type: @line[0].to_i,
        date: @line[1..8].to_date,
        value: (@line[9..18].to_f / 100_00),
        cpf: @line[19..29],
        card: @line[30..41],
        hour: @line[42..47],
        store_owner: @line[48..61],
        store_name: @line[62..80]
      }
    end
  end
end