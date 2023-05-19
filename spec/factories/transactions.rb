# frozen_string_literal: true

FactoryBot.define do
  factory :transaction do
    transaction_type { 1 }
    date { Date.new(2022, 10, 10) }
    value { '9.99' }
    cpf { 'String' }
    card { 'String' }
    hour { 'String' }
    store_owner { 'String' }
    store_name { 'String' }
  end
end
