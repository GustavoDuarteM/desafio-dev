# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CNAB::InterpreterLine do
  let(:line) { '3201903010000014200096206760174753****3153153453JOÃO MACEDO   BAR DO JOÃO' }
  subject { described_class.new(line) }

  describe '#call' do
    it 'contains the correct values' do
      expected = {
        transaction_type: 3,
        value: 142.0,
        cpf: '09620676017',
        card: '4753****3153',
        hour: '15:34:53',
        store_owner: 'JOÃO MACEDO   ',
        store_name: 'BAR DO JOÃO'
      }
      expect(subject.send(:interpreted_line)).to include(expected)
    end
  end
end
