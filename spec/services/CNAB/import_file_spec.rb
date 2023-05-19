# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CNAB::ImportFile do
  describe '#call' do
    let(:file) { File.open('spec/fixtures/CNAB.txt') }

    subject { described_class.new(file).call }

    it 'creates transactions' do
      expect { subject }.to change(Transaction, :count).by(1)
    end

    it 'creates transactions with correct values' do
      subject

      expect(Transaction.first.attributes).to include(
        'card' => '4753****3153',
        'cpf' => '09620676017',
        'hour' => '15:34:53',
        'store_name' => 'BAR DO JOÃO',
        'store_owner' => 'JOÃO MACEDO   ',
        'transaction_type' => 3
      )
    end
  end
end
